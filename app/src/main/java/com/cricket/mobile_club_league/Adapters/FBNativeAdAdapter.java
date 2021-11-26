package com.cricket.mobile_club_league.Adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.cricket.mobile_club_league.R;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdListener;


public class FBNativeAdAdapter extends RecyclerViewAdapterWrapper {

    private static final int TYPE_FB_NATIVE_ADS = 900;
    private static final int DEFAULT_AD_ITEM_INTERVAL = 10;
    private final Param mParam;

    private FBNativeAdAdapter(Param param) {
        super(param.adapter);
        this.mParam = param;
        assertConfig();
        setSpanAds();
    }

    private void assertConfig() {
        if (mParam.gridLayoutManager != null) {
            //if user set span ads
            int nCol = mParam.gridLayoutManager.getSpanCount();
            if (mParam.adItemInterval % nCol != 0) {
                throw new IllegalArgumentException(String.format("The adItemInterval (%d) is not divisible by number of columns in GridLayoutManager (%d)", mParam.adItemInterval, nCol));
            }
        }
    }

    private int convertAdPosition2OrgPosition(int position) {
        return position - (position + 1) / (mParam.adItemInterval + 1);
    }

    @Override
    public int getItemCount() {
        int realCount = super.getItemCount();
        return realCount + realCount / mParam.adItemInterval;
    }

    @Override
    public int getItemViewType(int position) {
        if (isAdPosition(position)) {
            return TYPE_FB_NATIVE_ADS;
        }
        return super.getItemViewType(convertAdPosition2OrgPosition(position));
    }

    private boolean isAdPosition(int position) {
        return (position + 1) % (mParam.adItemInterval + 1) == 0;
    }

    private void onBindAdViewHolder(final RecyclerView.ViewHolder holder) {
        final AdViewHolder adHolder = (AdViewHolder) holder;
        if (mParam.forceReloadAdOnBind || !adHolder.loaded) {
            final NativeAd nativeAd = new NativeAd(adHolder.getContext(), mParam.facebookPlacementId);
            NativeAdListener nativeAdListener = new NativeAdListener() {
                @Override
                public void onMediaDownloaded(Ad ad) {

                }

                @Override
                public void onError(Ad ad, AdError adError) {
                    adHolder.nativeAdContainer.setVisibility(View.GONE);
                }

                @Override
                public void onAdLoaded(Ad ad) {
                    if (ad != nativeAd) {
                        return;
                    }
                    adHolder.nativeAdContainer.setVisibility(View.VISIBLE);
                    adHolder.nativeAdTitle.setText(nativeAd.getAdvertiserName());
                    adHolder.nativeAdSocialContext.setText(nativeAd.getAdSocialContext());
                    adHolder.nativeAdBody.setText(nativeAd.getAdBodyText());
                    adHolder.nativeAdCallToAction.setText(nativeAd.getAdCallToAction());
                    AdOptionsView adChoicesView = new AdOptionsView(adHolder.getContext(), nativeAd, null);
                    adHolder.adChoicesContainer.removeAllViews();
                    adHolder.adChoicesContainer.addView(adChoicesView);
                    adHolder.nativeAdMedia.addView(adHolder.nativeAdTitle);
                    adHolder.nativeAdMedia.addView(adHolder.nativeAdCallToAction);
                    nativeAd.registerViewForInteraction(adHolder.nativeAdContainer, adHolder.nativeAdMedia, adHolder.nativeAdIcon);
                    adHolder.loaded = true;
                }

                @Override
                public void onAdClicked(Ad ad) {

                }

                @Override
                public void onLoggingImpression(Ad ad) {

                }
            };
            nativeAd.loadAd(nativeAd.buildLoadAdConfig().withAdListener(nativeAdListener).build());
        }
    }

    @Override
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder holder, int position) {
        if (getItemViewType(position) == TYPE_FB_NATIVE_ADS) {
            onBindAdViewHolder(holder);
        } else {
            super.onBindViewHolder(holder, convertAdPosition2OrgPosition(position));
        }
    }

    private RecyclerView.ViewHolder onCreateAdViewHolder(ViewGroup parent) {
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        View adLayoutOutline = inflater.inflate(mParam.itemContainerLayoutRes, parent, false);
        ViewGroup vg = adLayoutOutline.findViewById(mParam.itemContainerId);
        LinearLayout adLayoutContent = (LinearLayout) inflater.inflate(R.layout.facebook_native_ad, parent, false);
        vg.addView(adLayoutContent);
        return new AdViewHolder(adLayoutOutline);
    }

    @NonNull
    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        if (viewType == TYPE_FB_NATIVE_ADS) {
            return onCreateAdViewHolder(parent);
        }
        return super.onCreateViewHolder(parent, viewType);
    }

    private void setSpanAds() {
        if (mParam.gridLayoutManager == null) {
            return ;
        }
        final GridLayoutManager.SpanSizeLookup spl = mParam.gridLayoutManager.getSpanSizeLookup();
        mParam.gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() {
            @Override
            public int getSpanSize(int position) {
                if (isAdPosition(position)){
                    return spl.getSpanSize(position);
                }
                return 1;
            }
        });
    }

    private static class Param {
        private String facebookPlacementId;
        private RecyclerView.Adapter adapter;
        private int adItemInterval;
        private boolean forceReloadAdOnBind;
        @LayoutRes
        private int itemContainerLayoutRes;
        @IdRes
        private int itemContainerId;
        private GridLayoutManager gridLayoutManager;
    }

    public static class Builder {
        private final Param mParam;
        private Builder(Param param) {
            mParam = param;
        }
        public static Builder with(String placementId, RecyclerView.Adapter wrapped) {
            Param param = new Param();
            param.facebookPlacementId = placementId;
            param.adapter = wrapped;
            param.adItemInterval = DEFAULT_AD_ITEM_INTERVAL;
            param.itemContainerLayoutRes = R.layout.facebook_native_ad_outline;
            param.itemContainerId = R.id.ad_container;
            param.forceReloadAdOnBind = true;
            return new Builder(param);
        }

        public Builder adItemInterval(int interval) {
            mParam.adItemInterval = interval;
            return this;
        }

        public Builder adLayout(@LayoutRes int layoutContainerRes, @IdRes int itemContainerId) {
            mParam.itemContainerLayoutRes = layoutContainerRes;
            mParam.itemContainerId = itemContainerId;
            return this;
        }

        public FBNativeAdAdapter build() {
            return new FBNativeAdAdapter(mParam);
        }
        public Builder enableSpanRow(GridLayoutManager layoutManager) {
            mParam.gridLayoutManager = layoutManager;
            return this;
        }

        public Builder forceReloadAdOnBind(boolean forced) {
            mParam.forceReloadAdOnBind = forced;
            return this;
        }
    }

    private static class AdViewHolder extends RecyclerView.ViewHolder {
        private final ImageView nativeAdIcon;
        private final TextView nativeAdTitle;
        private final MediaView nativeAdMedia;
        private final TextView nativeAdSocialContext;
        private final TextView nativeAdBody;
        private final Button nativeAdCallToAction;
        private final LinearLayout adChoicesContainer;
        private final LinearLayout nativeAdContainer;
        private boolean loaded;
        AdViewHolder(View view) {
            super(view);
            nativeAdContainer = view.findViewById(R.id.fb_native_ad_container);
            nativeAdIcon = view.findViewById(R.id.native_ad_icon);
            nativeAdTitle = view.findViewById(R.id.native_ad_title);
            nativeAdMedia = view.findViewById(R.id.native_ad_media);
            nativeAdSocialContext = view.findViewById(R.id.native_ad_social_context);
            nativeAdBody = view.findViewById(R.id.native_ad_body);
            nativeAdCallToAction = view.findViewById(R.id.native_ad_call_to_action);
            adChoicesContainer = view.findViewById(R.id.ad_choices_container);
            loaded = false;
        }
        Context getContext() {
            return nativeAdContainer.getContext();
        }
    }
}
