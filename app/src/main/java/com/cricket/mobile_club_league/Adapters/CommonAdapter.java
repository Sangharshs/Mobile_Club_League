package com.cricket.mobile_club_league.Adapters;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;

import com.bumptech.glide.Glide;
import com.cricket.mobile_club_league.MatchDetailsActivity;
import com.cricket.mobile_club_league.Model.Match_Model;
import com.cricket.mobile_club_league.R;
import com.cricket.mobile_club_league.util.Utility;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdsManager;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.iwgang.countdownview.CountdownView;

import static com.cricket.mobile_club_league.ApiConfig.IMG;

public class CommonAdapter extends RecyclerView.Adapter<CommonAdapter.Viewholder> {
    private ArrayList<NativeAd> nativeAd = new ArrayList<>();
    private final int ITEM_TYPE_DATA = 0;
    private final int ITEM_TYPE_AD = 1;
    private final int AD_POSITION = 1;
    private final int AD_POSITION_EVERY_COUNT = 1;
    private NativeAdsManager fbNativeManager;
    private static final String  FB_NATIVE_AD_ID = String.valueOf(R.string.native_ad_fb);
    Context mContext;

    List<Match_Model> match_model_list = new ArrayList<>();
    public CommonAdapter(List<Match_Model> match_model_list,Context mContext) {
        this.match_model_list = match_model_list;
        this.mContext = mContext;
        fbNativeManager = new NativeAdsManager(mContext, FB_NATIVE_AD_ID,3);

    }

    @NonNull
    @Override
    public Viewholder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

            View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.match_iteam, parent, false);
            return new Viewholder(view);

    }
    public static class NativeAdViewHolder extends RecyclerView.ViewHolder {
        LinearLayout nativeAdContainer;
        NativeAdViewHolder(@NonNull View itemView) {
            super(itemView);
            nativeAdContainer = itemView.findViewById(R.id.native_ad_container);
        }
    }
    @SuppressLint("ResourceAsColor")
    @Override
    public void onBindViewHolder(@NonNull Viewholder holder, int position) {

            if (match_model_list.get(position).getPlayer1_profile() != null && !match_model_list.get(position).getPlayer1_profile().isEmpty()) {
                Glide.with(holder.team1_image.getContext()).load(IMG + match_model_list.get(position).getPlayer1_profile()).into(holder.team1_image);
                Log.e("MSG1", IMG + match_model_list.get(position).getPlayer1_profile());
            }
            if (match_model_list.get(position).getPlayer1_profile() != null && !match_model_list.get(position).getPlayer1_profile().isEmpty()) {
                Glide.with(holder.team2_image.getContext()).load(IMG + match_model_list.get(position).getPlayer2_profile()).into(holder.team2_image);
                Log.e("MSG2", IMG + match_model_list.get(position).getPlayer1_profile());
            }


            holder.team_name1.setText(match_model_list.get(position).getPlayer1_name());
            holder.team_name2.setText(match_model_list.get(position).getPlayer2_name());

            holder.match_name.setText(match_model_list.get(position).getMatch_name());
            holder.match_progress.setText(match_model_list.get(position).getMatch_progress());


            holder.dot_imageview.setVisibility(View.GONE);

            if (match_model_list.get(position).getMatch_progress().equals("Covering")) {
                holder.dot_imageview.setVisibility(View.VISIBLE);
                holder.c.setBackgroundResource(R.drawable.green_bg);
                holder.c.setTextColor(R.color.grentext);
            }

            if (match_model_list.get(position).getMatch_progress().equals("Not Covering")) {
                holder.match_progress.setTextColor(Color.RED);
                holder.dot_imageview.setImageResource(R.drawable.red_round);
                holder.dot_imageview.setVisibility(View.VISIBLE);
                holder.c.setBackgroundResource(R.drawable.red_round);
                holder.c.setTextColor(R.color.redText);
            }

            if (match_model_list.get(position).getTeam_status().equals("Team Coming Soon")) {
                holder.team_status.setTextColor(Color.RED);
                holder.t.setBackgroundResource(R.drawable.red_round);
                holder.t.setTextColor(R.color.redText);
            }

            if (match_model_list.get(position).getTeam_status().equals("Pre-Toss Team is Published")) {
                holder.team_status.setTextColor(holder.itemView.getResources().getColor(R.color.orangeText));
                holder.t.setBackgroundResource(R.drawable.orange_round);
                holder.t.setTextColor(R.color.orangeText);
            }

            if (match_model_list.get(position).getTeam_status().equals("Final Team is Published")) {
                holder.team_status.setTextColor(holder.itemView.getResources().getColor(R.color.green));
                holder.t.setBackgroundResource(R.drawable.green_bg);
                holder.t.setTextColor(R.color.grentext);
            }

            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String countDate = match_model_list.get(position).getMatch_time();
            //"01-01-2021 00:00:00"
            Date now = new Date();
            try {
                Date date = sdf.parse(String.valueOf(countDate));
                long currentTime = now.getTime();
                long newYearDate = date.getTime();
                long countDownToNewYear = newYearDate - currentTime;
                holder.mCvCountdownView.start(countDownToNewYear);
            } catch (ParseException e) {
                e.printStackTrace();
            }
//        if(!match_model_list.get(position).getTeam1_fullname().isEmpty() || match_model_list.get(position).getTeam1_fullname() != null)
//        holder.team1_full.setText(match_model_list.get(position).getTeam1_fullname());
//        if(!match_model_list.get(position).getTeam2_fullname().isEmpty())
//        holder.team2_full.setText(match_model_list.get(position).getTeam2_fullname());

//        if(match_model_list.get(position).getTeam1_fullname().isEmpty() && match_model_list.get(position).getTeam2_fullname().isEmpty()){
//            holder.team2_full.setVisibility(View.GONE);
//            holder.team1_full.setVisibility(View.GONE);
//        }

            holder.team_status.setText(match_model_list.get(position).getTeam_status());

            holder.ratingBar.setRating(match_model_list.get(position).getMatch_rating());
            if (match_model_list.get(position).getMatch_rating() == 0) {
                holder.ratingBar.setVisibility(View.GONE);
            }
            //
            CountDownTimer unused = holder.timer = new CountDownTimer(Utility.convertTimeInMillis("yyyy-MM-dd HH:mm:ss", match_model_list.get(position).getMatch_time()) - System.currentTimeMillis(), 1000) {
                public void onTick(long j) {
                    holder.text_minutes.setText(Utility.updateTimeRemaining(j));
                }

                public void onFinish() {
                    holder.text_minutes.setText("00:00:00");//replace(" ", "\n"));
                    //     holder.text_minutes.setText(match_model_list.get(position).getMatch_time().replace(" ", "\n"));//replace(" ", "\n"));
                }
            }.start();

            holder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if ((match_model_list.get(position).getMatch_rating()) != 0) {
                        Intent intent = new Intent(v.getContext(), MatchDetailsActivity.class);
                        intent.putExtra("id", match_model_list.get(position).getMatchId());
                        v.getContext().startActivity(intent);
                    } else {
                        LayoutInflater inflater = LayoutInflater.from(holder.itemView.getContext());
                        View v1 = inflater.inflate(R.layout.item_click_dialog, null);
                        Button dismiss = v1.findViewById(R.id.dismiss);
                        final AlertDialog alertDialog = new AlertDialog.Builder(holder.itemView.getContext())
                                .setView(v1)
                                .setCancelable(false)
                                .create();
                        alertDialog.show();

                        dismiss.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View v) {
                                alertDialog.cancel();
                            }
                        });
                    }
                }
            });

    }

    @Override
    public int getItemCount() {
        return match_model_list.size();
    }



    public class Viewholder extends RecyclerView.ViewHolder {
        ImageView team1_image, team2_image,dot_imageview;
        TextView team_name1, dummy;
        TextView team_name2;
        TextView match_name;
        CountDownTimer timer;
        TextView match_progress;
        TextView team_status;
        TextView date,text_days, text_hours,text_minutes,text_seconds;
        RatingBar ratingBar;
        CardView cardView;
        CountdownView mCvCountdownView;
        TextView c,p,t,team1_full,team2_full;
        public Viewholder(@NonNull View itemView) {
            super(itemView);
            mCvCountdownView = itemView.findViewById(R.id.mycountdown);

            team1_full = itemView.findViewById(R.id.team1_full);
            team2_full = itemView.findViewById(R.id.team2_full);
            team1_image = itemView.findViewById(R.id.team1_image);
            team2_image = itemView.findViewById(R.id.team2_image);

            match_name  = itemView.findViewById(R.id.match_name);

            dummy = itemView.findViewById(R.id.dummy);
            text_days      = itemView.findViewById(R.id.text_days);
            text_hours       = itemView.findViewById(R.id.text_hours);
            text_minutes     = itemView.findViewById(R.id.text_minute);
            text_seconds     = itemView.findViewById(R.id.text_seconds);

            dot_imageview = itemView.findViewById(R.id.image_dot);

            team_name1  = itemView.findViewById(R.id.team_name1);
            team_name2  = itemView.findViewById(R.id.team_name2);

            match_progress = itemView.findViewById(R.id.match_progress);
            team_status    = itemView.findViewById(R.id.team_status);

            ratingBar      = itemView.findViewById(R.id.ratingBar);

            c = itemView.findViewById(R.id.c);
            p = itemView.findViewById(R.id.p);
            t = itemView.findViewById(R.id.t);
//            Typeface type = Typeface.createFromAsset(itemView.getContext().getAssets(),"font/arialce.ttf");
//            team1_full.setTypeface(type);
//            Typeface type1 = Typeface.createFromAsset(itemView.getContext().getAssets(),"font/arialce.ttf");
//            team2_full.setTypeface(type1);
        }
    }
}
