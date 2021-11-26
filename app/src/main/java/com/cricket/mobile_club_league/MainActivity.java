package com.cricket.mobile_club_league;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.cardview.widget.CardView;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewpager.widget.ViewPager;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.bumptech.glide.Glide;
import com.cricket.mobile_club_league.Adapters.CommonAdapter;
import com.cricket.mobile_club_league.Adapters.FBNativeAdAdapter;
import com.cricket.mobile_club_league.Adapters.SliderAdapterExample;
import com.cricket.mobile_club_league.Adapters.indicatorAdapter;
import com.cricket.mobile_club_league.Model.GameModel;
import com.cricket.mobile_club_league.Model.Match_Model;
import com.cricket.mobile_club_league.Model.SliderItem;
import com.cricket.mobile_club_league.Model.SliderModel;
import com.cricket.mobile_club_league.util.SaveSharedPreference;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.shimmer.ShimmerFrameLayout;
import com.google.android.material.navigation.NavigationView;
import com.onesignal.OneSignal;
import com.smarteist.autoimageslider.SliderAnimations;
import com.smarteist.autoimageslider.SliderView;
import com.suddenh4x.ratingdialog.AppRating;
import com.suddenh4x.ratingdialog.preferences.RatingThreshold;
import com.vishnusivadas.advanced_httpurlconnection.PutData;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import de.hdodenhof.circleimageview.CircleImageView;


import static com.cricket.mobile_club_league.ApiConfig.BANNER_AD_ID;
import static com.cricket.mobile_club_league.ApiConfig.GAMES_;
import static com.cricket.mobile_club_league.ApiConfig.IMG;
import static com.cricket.mobile_club_league.ApiConfig.INTERSTITIAL_AD_ID;
import static com.cricket.mobile_club_league.ApiConfig.NATIVE_AD_AFTER;
import static com.cricket.mobile_club_league.ApiConfig.NATIVE_AD_ID;
import static com.cricket.mobile_club_league.util.Utility.USER_NAME;

public class MainActivity extends AppCompatActivity {
    public static String PROMOTIONAL_BANNER;
    public static String PROMOTIONAL_BANNER_URL;
    public static String PRIVACY_POLICY;
    public static String TERMS_CONDITIONS;
    public static String READ_ME;
    public static int MINIMUM_AMOUNT;

    private Match_Model match_model;
    private NavigationView navigationView;
    private AdView adView;
    DrawerLayout drawerLayout;
    indicatorAdapter.callback indicatorCallback;
    public static final String BrodcastStringForAction = "checkinternet";
    View no_interenet_design, fragment_home;

    private IntentFilter mIntentFilter;
    Button retryButton;
    CircleImageView float_button_icon;
    CardView cardView;
    private ViewPager.OnPageChangeListener pageListener;
    private ArrayList<GameModel> restauranList = new ArrayList<>();
    public static List<GameModel> gameModelList = new ArrayList<>();
    public static List<Match_Model> match_modelList = new ArrayList<>();
    ImageView background;
    RelativeLayout blur;

    public static int selectedPage;
    ShimmerFrameLayout shimmer0,shimmer1,shimmer2;
    // LottieAnimationView lottieAnimationView;
    RecyclerView matches_recyclerview, gamecategory_recyclerview;
    SwipeRefreshLayout swipeRefreshLayout;
    String category, payment_Method, pnumber,matches_category,slider_category;
    indicatorAdapter indicatorAdapter;
    //    Second Slider
    SliderAdapterExample adapter;
    SliderItem sliderItem;
    List<SliderItem> sliderItemList;
    SliderView sliderView;
    RelativeLayout rlm;
    EditText pnumberedittext;
    RadioButton radioButton1;
    RadioButton radioButton2;
    RadioGroup radioGroup;
    String username, email, total_earning;
    TextView userTextV, emailTextV;
    LinearLayout linearLayout;
    int selectedId, position;
    TextView setMinimumAlert;
    CommonAdapter cricketAdapter;

    @SuppressLint("CutPasteId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        OneSignal.setLogLevel(OneSignal.LOG_LEVEL.VERBOSE, OneSignal.LOG_LEVEL.NONE);
        OneSignal.initWithContext(this);
        OneSignal.setAppId("08c594e4-822e-4f3b-b6c8-66e8b1e2866b");

        shimmer0 = findViewById(R.id.gameitemshimmer1);
        shimmer1 = findViewById(R.id.shimmer1);
        shimmer2 = findViewById(R.id.shimmer2);

        swipeRefreshLayout = findViewById(R.id.swipe_refresh);
        // lottieAnimationView = findViewById(R.id.animationView);
        float_button_icon = findViewById(R.id.floatbuttonicon);

        //SLider
        sliderView = findViewById(R.id.imageSlider);
        cardView = findViewById(R.id.icard);
//        rlm = findViewById(R.id.rlm);

        userTextV = findViewById(R.id.username_show);
        emailTextV = findViewById(R.id.email_show);
        linearLayout = findViewById(R.id.datalayout);

        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        no_interenet_design = findViewById(R.id.no_internet_design);
        fragment_home = findViewById(R.id.main_layout);

        retryButton = findViewById(R.id.restart_button);
        gamecategory_recyclerview = findViewById(R.id.indicatorList);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(RecyclerView.HORIZONTAL);
        gamecategory_recyclerview.setLayoutManager(linearLayoutManager);

        matches_recyclerview = findViewById(R.id.matchesList);
        LinearLayoutManager linearLayoutManager1 = new LinearLayoutManager(getApplicationContext());
        linearLayoutManager1.setOrientation(RecyclerView.VERTICAL);
        matches_recyclerview.setLayoutManager(linearLayoutManager1);

        load_add();
        loadSlider();
        loadMatches();
        refreshLayot();

//        OneSignal.startInit(this)
//                .setNotificationOpenedHandler(new ExampleNotificationOpenedHandler(this))
//                .init();

        AudienceNetworkAds.initialize(this);

        mIntentFilter = new IntentFilter();
        mIntentFilter.addAction(BrodcastStringForAction);
        Intent serviceIntent = new Intent(this, MyServices.class);
        startService(serviceIntent);

        if (isOnline(getApplicationContext())) {
            if (no_interenet_design != null)
                no_interenet_design.setVisibility(View.VISIBLE);
            setVisibility_ON();
        } else {
            setVisibility_OFF();
        }

        new AppRating.Builder(this)
                .setMinimumLaunchTimes(5)
                .setMinimumDays(7)
                .setMinimumLaunchTimesToShowAgain(5)
                .setMinimumDaysToShowAgain(10)
                .setRatingThreshold(RatingThreshold.FOUR)
                .showIfMeetsConditions();

        load_float_button();
        show_float_button();
        load_app_setting();

        JsonArrayRequest request0 = new JsonArrayRequest(Request.Method.POST, GAMES_ + "minlimit.php", null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                for (int i = 0; i < response.length(); i++) {
                    try {
                        JSONObject object = response.getJSONObject(i);
                        MINIMUM_AMOUNT = object.getInt("minimum_limit");
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
            }
        });

        RequestQueue queue0 = Volley.newRequestQueue(getApplicationContext());
        queue0.add(request0);

        loadMatchCategory();

        drawerLayout = findViewById(R.id.drawer_layout);
        navigationView = findViewById(R.id.nav_view);
        ActionBarDrawerToggle toggle = new ActionBarDrawerToggle(this, drawerLayout, toolbar, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        drawerLayout.addDrawerListener(toggle);
        toggle.getDrawerArrowDrawable().setColor(getResources().getColor(R.color.white));
        toggle.setDrawerIndicatorEnabled(true);
        toggle.syncState();

        load_navigation_items();
        loadMatchCategory();
        loadMatches();
        loadSlider();
        getData();
        load_float_button();
        show_float_button();

        if(match_modelList.size() == 0 && sliderItemList.size() == 0){
            loadSlider();
            loadMatches();
        }

    }
    private void refreshLayot() {
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() {
            @Override
            public void onRefresh() {
                cardView.setVisibility(View.GONE);
                new Handler().postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        shimmer1.setAlpha((float) 0.5);
                        shimmer1.showShimmer(true);
                        //the current activity will get finished.
                    }
                },1000);
                if (!sliderItemList.isEmpty() || !match_modelList.isEmpty()) {
                    sliderItemList.clear();
                    match_modelList.clear();
                }
                loadSlider();
                loadMatches();
                //restaurantHolder.setCurrentItem(position);
                //Toast.makeText(MainActivity.this, String.valueOf(match_modelList.size()).toString(), Toast.LENGTH_SHORT).show();
                Toast.makeText(getApplicationContext(), "Refreshing....", Toast.LENGTH_SHORT).show();
                swipeRefreshLayout.setRefreshing(false);
            }
        });
    }

    //
//    //load matches category //
    private void loadMatchCategory() {
        shimmer0.setVisibility(View.VISIBLE);
        shimmer0.startShimmer();
        shimmer0.setAlpha((float) 0.5);
        shimmer0.startShimmer();
        gameModelList = new ArrayList<>();
        JsonArrayRequest request = new JsonArrayRequest(Request.Method.GET, GAMES_ + "getgames.php", null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                gameModelList.clear();
                for (int i = 0; i < response.length(); i++) {
                    try {
                        // Toast.makeText(getContext(), response.toString(), Toast.LENGTH_SHORT).show();
                        JSONObject object = response.getJSONObject(i);
                        GameModel gameModel = new GameModel();
                        gameModel.setId(object.getString("id"));
                        gameModel.setGame_name(object.getString("category"));
                        gameModel.setGameIcon(object.getString("icon"));
                        gameModelList.add(gameModel);
                        indicatorAdapter = new indicatorAdapter(getApplicationContext(), gameModelList, indicatorCallback);
                        shimmer0.setVisibility(View.GONE);
                        gamecategory_recyclerview.setAdapter(indicatorAdapter);
                        matches_category = gameModelList.get(position).getId();
                        //Toast.makeText(MainActivity.this, matches_category, Toast.LENGTH_SHORT).show();
                        indicatorCallback = new indicatorAdapter.callback() {
                            @Override
                            public void onTitleClicked(int position) {
                                cardView.setVisibility(View.GONE);
                                if(sliderItemList !=null || match_modelList != null){
                                    sliderItemList.clear();
                                    match_modelList.clear();
                                }

                                loadSlider();
                                loadMatches();
                                matches_category = gameModelList.get(position).getId();
                                //slider_category  = sliderItemList.get(position).getSlider_category();
                                indicatorAdapter.setSelectedIndex(position);
                                indicatorAdapter.notifyDataSetChanged();
                                gamecategory_recyclerview.scrollToPosition(position);
                            }
                        };
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                shimmer0.setVisibility(View.GONE);
            }
        });
        RequestQueue queue = Volley.newRequestQueue(getApplicationContext());
        queue.add(request);
        queue.getCache().clear();
    }
    //load matches category //

    //Load Matches Categorywise Start//
    private void loadMatches() {
        shimmer2.setVisibility(View.VISIBLE);
        shimmer2.startShimmer();
        shimmer2.setAlpha((float) 0.5);
        shimmer2.startShimmer();
        JsonArrayRequest request = new JsonArrayRequest(Request.Method.GET, GAMES_ + "getcricket.php", null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                match_modelList.clear();
                for (int i = 0; i < response.length(); i++) {
                    try {
                        // Toast.makeText(getContext(), response.toString(), Toast.LENGTH_SHORT).show();
                        JSONObject object = response.getJSONObject(i);
                        match_model = new Match_Model();
                        match_model.setMatchId(object.getString("id"));
                        match_model.setPlayer1_profile(object.getString("team1_image"));
                        match_model.setPlayer2_profile(object.getString("team2_image"));
                        match_model.setMatch_name(object.getString("match_name"));
                        match_model.setPlayer1_name(object.getString("team1_name"));
                        match_model.setPlayer2_name(object.getString("team2_name"));
                        match_model.setMatch_progress(object.getString("match_status"));
                        match_model.setTeam_status(object.getString("team_status"));
                        match_model.setMatch_rating(object.getInt("match_rating"));
                        match_model.setMatch_time(object.getString("date_time"));
                        match_model.setTeam1_fullname(object.getString("team1_full"));
                        match_model.setTeam2_fullname(object.getString("team2_full"));
                        match_model.setMatchCategory(object.getString("category"));


//                        if (!gameModelList.isEmpty())
                            if (match_model.getMatchCategory().equals(matches_category)) {
                                match_modelList.add(match_model);
                                shimmer2.setVisibility(View.GONE);
                                if(match_modelList.size()==0){
                                    shimmer2.setVisibility(View.GONE);
                                    Toast.makeText(MainActivity.this, "Matches Not Found", Toast.LENGTH_SHORT).show();
                                }
                            }
                    } catch (JSONException | IndexOutOfBoundsException e) {
                        e.printStackTrace();
                    }
                    ArrayList<Match_Model> list = sortArray((ArrayList<Match_Model>) match_modelList);
                    cricketAdapter = new CommonAdapter(list,getApplicationContext());
                    FBNativeAdAdapter fbNativeAdAdapter = FBNativeAdAdapter.Builder.with(getResources().getString(R.string.native_ad_fb),cricketAdapter).adItemInterval(NATIVE_AD_AFTER).build();

                    matches_recyclerview.setAdapter(cricketAdapter);
                    matches_recyclerview.setAdapter(fbNativeAdAdapter);
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                shimmer2.setVisibility(View.GONE);
            }
        });z

        RequestQueue queue = Volley.newRequestQueue(getApplicationContext());
        queue.add(request);
        queue.addRequestFinishedListener(new RequestQueue.RequestFinishedListener<Object>() {
            @Override
            public void onRequestFinished(Request<Object> request) {
                shimmer2.setVisibility(View.GONE);
            }
        });
    }

    //Load Matches Categorywise End//

    // Slider Coding Start //
    public void loadSlider() {
        shimmer1.setAlpha((float) 0.5);
        shimmer1.showShimmer(true);
        shimmer1.setVisibility(View.VISIBLE);
        sliderView.setSliderAdapter(new SliderAdapterExample(getApplicationContext(), sliderItemList));
        sliderItemList = new ArrayList<>();
        JsonArrayRequest request1 = new JsonArrayRequest(Request.Method.GET, GAMES_ + "cricket_slider.php", null, new Response.Listener<JSONArray>() {
            @SuppressLint("ClickableViewAccessibility")
            @Override
            public void onResponse(JSONArray response) {
                sliderItemList.clear();
                for (int i = 0; i < response.length(); i++) {
                    try {
                        JSONObject object = response.getJSONObject(i);
                        SliderModel slideModel = new SliderModel();
                        slideModel.setBanner(object.getString("slider"));
                        slideModel.setUrl(object.getString("url"));
                        String category = object.getString("category");
                        sliderItem = new SliderItem();
                        sliderItem.setBanner(object.getString("slider"));
                        sliderItem.setUrl(object.getString("url"));

                        PROMOTIONAL_BANNER = object.getString("slider");
                        PROMOTIONAL_BANNER_URL = object.getString("url");
                        if (PROMOTIONAL_BANNER != null && !PROMOTIONAL_BANNER.isEmpty()) {
                            if (gameModelList.size() != 0) {

                                if (category.equals(matches_category)) {
                                    cardView.setVisibility(View.VISIBLE);
                                    sliderView.setVisibility(View.VISIBLE);
                                    sliderItemList.add(sliderItem);
                                    sliderView.setVisibility(View.VISIBLE);
                                    if(sliderItemList.size() ==0){
                                        sliderView.setVisibility(View.GONE);
                                        cardView.setVisibility(View.GONE);
                                    }
                                    shimmer1.showShimmer(false);
                                    shimmer1.setVisibility(View.GONE);
                                }
                            }


                            //  Glide.with(view.getContext()).load(IMG+PROMOTIONAL_BANNER).into(imageView);
                        } else {
                            shimmer1.setVisibility(View.GONE);
                            sliderView.setVisibility(View.GONE);
                            cardView.setVisibility(View.GONE);
                        }
                        ///////BANNER SLIDER/////

                    } catch (JSONException | IndexOutOfBoundsException e) {
                        e.printStackTrace();
                    }
                }
                adapter = new SliderAdapterExample(getApplicationContext(), sliderItemList);
                sliderView.setSliderAdapter(adapter);
                adapter.notifyDataSetChanged();
                sliderView.setScrollTimeInSec(4); //set scroll delay in seconds :
                sliderView.setAutoCycle(true);
                sliderView.setIndicatorEnabled(false);
                sliderView.setSliderTransformAnimation(SliderAnimations.SIMPLETRANSFORMATION);
                sliderView.startAutoCycle();
                sliderView.onPageScrollStateChanged(1);

            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                //Toast.makeText(view.getContext(), error.getMessage(), Toast.LENGTH_SHORT).show();
            }
        });

        RequestQueue queue1 = Volley.newRequestQueue(getApplicationContext());
        queue1.add(request1);
        queue1.addRequestFinishedListener(new RequestQueue.RequestFinishedListener<Object>() {
            @Override
            public void onRequestFinished(Request<Object> request) {
                shimmer1.setVisibility(View.GONE);
            }
        });

    }
    // Slider Coding End//

    //Earning data coding Start //
    private void getData() {
        SaveSharedPreference.getUserName(getApplicationContext(), username);
        SharedPreferences pref = getApplicationContext().getSharedPreferences("MyPref", 0); // 0 - for private mode
        username = pref.getString(USER_NAME, "");
        JsonArrayRequest request3 = new JsonArrayRequest(Request.Method.POST, GAMES_ + "refer.php?username=" + username, null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                for (int i = 0; i < response.length(); i++) {
                    try {
                        JSONObject object = response.getJSONObject(i);
                        username = object.getString("username");
                        email = object.getString("email");
                        total_earning = object.getString("earning");
                        //   Toast.makeText(MainActivity.this, username+email+total_earning, Toast.LENGTH_SHORT).show();
                        if (username != null && email != null && total_earning != null) {
                            linearLayout.setVisibility(View.VISIBLE);
                            userTextV.setText(String.valueOf(username));
                            emailTextV.setText(String.valueOf(email));
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
            }
        });
        RequestQueue queue3 = Volley.newRequestQueue(getApplicationContext());
        queue3.add(request3);
    }
    //Earning data coding End   //

    //Radio Button Start//
    public void onRadioButtonClicked(View view) {
        boolean checked = ((RadioButton) view).isChecked();
        payment_Method = "";
        // Check which radio button was clicked
        switch (view.getId()) {
            case R.id.googlepaybtn:
                if (checked)
                    payment_Method = "Google Pay";
                break;
            case R.id.paytmbtn:
                if (checked)
                    payment_Method = "Paytm";
                break;
        }
        Toast.makeText(getApplicationContext(), payment_Method, Toast.LENGTH_SHORT).show();
    }
    //Radio Button End//

    // Show Floating Action Button Start//
    private void show_float_button() {
        if (ApiConfig.FLOATING_BUTTON_ICON != null) {
            float_button_icon.setVisibility(View.VISIBLE);
            float_button_icon.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if (ApiConfig.FLOATING_BUTTON_URL != null && !ApiConfig.FLOATING_BUTTON_URL.isEmpty()) {
                        Uri uri = Uri.parse(ApiConfig.FLOATING_BUTTON_URL);
                        Intent intent = new Intent(Intent.ACTION_VIEW, uri);
                        startActivity(intent);
                        Glide.with(getApplicationContext()).load(IMG + ApiConfig.FLOATING_BUTTON_ICON).into(float_button_icon);

                    } else {
                        float_button_icon.setVisibility(View.GONE);
                    }
                }
            });
        }
    }
    // Show Floating Action Button End//

    // Load Floating Action Button Start//
    private void load_float_button() {
        JsonArrayRequest request1 = new JsonArrayRequest(Request.Method.POST, GAMES_ + "banners.php", null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                for (int i = 0; i < response.length(); i++) {
                    try {
                        JSONObject object = response.getJSONObject(i);
                        ApiConfig.TELEGRAM_BANNER = object.getString("t_banner_image");
                        ApiConfig.TELEGRAM_BANNER_URL = object.getString("t_banner_link");
                        ApiConfig.FLOATING_BUTTON_URL = object.getString("web_url");
                        ApiConfig.FLOATING_BUTTON_ICON = object.getString("float_icon");
                        //Toast.makeText(MainActivity.this, FLOATING_BUTTON_URL, Toast.LENGTH_SHORT).show();
                        Glide.with(getApplicationContext()).load(IMG + ApiConfig.FLOATING_BUTTON_ICON).into(float_button_icon);

                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });
        RequestQueue queue1 = Volley.newRequestQueue(getApplicationContext());
        queue1.add(request1);
    }
    // Load Floating Action button End//

    //   Start For Send Payment Request //
    private void send_payment_request() {
        pnumber = pnumberedittext.getText().toString();
        if (username != null && email != null && total_earning != null && payment_Method != null && !pnumber.isEmpty()) {

            Handler handler = new Handler(Looper.getMainLooper());
            handler.post(new Runnable() {
                @Override
                public void run() {
                    //Starting Write and Read data with URL
                    //Creating array for parameters
                    String[] field = new String[5];
                    field[0] = "username";
                    field[1] = "email";
                    field[2] = "user_points";
                    field[3] = "payment_type";
                    field[4] = "payment_number";
                    //Creating array for data
                    String[] data = new String[5];
                    data[0] = username;
                    data[1] = email;
                    data[2] = total_earning;
                    data[3] = payment_Method;
                    data[4] = pnumber;

                    Log.d("DataL", username + email + payment_Method + pnumber);

                    PutData putData = new PutData(GAMES_ + "payment_req.php", "POST", field, data);
                    if (putData.startPut()) {
                        if (putData.onComplete()) {
                            String result = putData.getResult();
                            //End ProgressBar (Set visibility to GONE)
                            // progressLayout.setVisibility(View.GONE);
                            Log.i("PutData", String.valueOf(putData));
                            if (result.equals("Request Send Successfully")) {
                                Toast.makeText(MainActivity.this, "Request Send Successfully", Toast.LENGTH_SHORT).show();
                                finish();
                            } else {
                                Toast.makeText(MainActivity.this, result.toString(), Toast.LENGTH_SHORT).show();
                            }
                        }
                    }
                    // End Write and Read data with URL
                }
            });
        } else {
            Toast.makeText(getApplicationContext(), "All Fields Are Require.", Toast.LENGTH_SHORT).show();
        }


    }

    //   End Payment Request Code //
    private void load_navigation_items() {
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(@NonNull MenuItem item) {
                int id = item.getItemId();
                if (id == R.id.nav_rate_us) {
                    Uri uri = Uri.parse("https://play.google.com/store/apps/details?id=" + getPackageName());
                    Intent intent = new Intent(Intent.ACTION_VIEW, uri);
                    startActivity(intent);
                } else if (id == R.id.nav_check_update) {
                    Uri uri = Uri.parse("https://play.google.com/store/apps/details?id=" + getPackageName());
                    Intent intent = new Intent(Intent.ACTION_VIEW, uri);
                    startActivity(intent);
                } else if (id == R.id.nav_subscribe) {
                    //   bp.subscribe(MainActivity.this, SUBSCRIPTION_ID);
                } else if (id == R.id.nav_share_app) {
                    Intent share = new Intent(Intent.ACTION_SEND);
                    String linkshare = "https://play.google.com/store/apps/details?id=" + getPackageName();
                    String sybject = "Download App" + R.string.app_name;
                    share.setType("text/plain");
                    share.putExtra(Intent.EXTRA_SUBJECT, sybject);
                    share.putExtra(Intent.EXTRA_TEXT, linkshare);
                    startActivity(Intent.createChooser(share, "Share using"));
                } else if (id == R.id.nav_privacy_policy) {
                    if (PRIVACY_POLICY != null) {
                        Intent intent = new Intent(MainActivity.this, NavigationItemsActivity.class);
                        intent.putExtra("privacy_policy", PRIVACY_POLICY);
                        startActivity(intent);
                    }
                } else if (id == R.id.nav_read_me) {
                    if (READ_ME != null) {
                        Intent intent = new Intent(MainActivity.this, NavigationItemsActivity.class);
                        intent.putExtra("read_me", READ_ME);
                        startActivity(intent);
                    }
                } else if (id == R.id.nav_terms_and_conditions) {
                    if (TERMS_CONDITIONS != null) {
                        Intent intent = new Intent(MainActivity.this, NavigationItemsActivity.class);
                        intent.putExtra("terms", TERMS_CONDITIONS);
                        startActivity(intent);
                    }
                } else if (id == R.id.nav_contact_us) {
                    Intent intent = new Intent(Intent.ACTION_SEND);
                    String[] recipients = {"Jilaharuhani222@gmail.com"};
                    intent.putExtra(Intent.EXTRA_EMAIL, recipients);
                    intent.putExtra(Intent.EXTRA_SUBJECT, "Contact Us");
                    intent.setType("text/html");
                    intent.setPackage("com.google.android.gm");
                    startActivity(Intent.createChooser(intent, "Send mail"));
                } else if (id == R.id.refer_earn) {
                    startActivity(new Intent(MainActivity.this, Refer_EarnActivity.class));
                } else if (id == R.id.nav_login) {
                    startActivity(new Intent(MainActivity.this, LoginActivity.class));
                } else if (id == R.id.nav_logout) {
                    SaveSharedPreference.setLoggedIn(getApplicationContext(), false);
                    SaveSharedPreference.getUserName(getApplicationContext(), username);
                    SharedPreferences pref = getApplicationContext().getSharedPreferences("MyPref", 0); // 0 - for private mode
                    pref.getString(USER_NAME, "");
                    pref.edit().clear().apply();
                    recreate();
                } else if (id == R.id.nav_news) {
                    startActivity(new Intent(MainActivity.this, NewsmActivity.class));
                } else if (id == R.id.nav_top_fantacy_apps) {
                    startActivity(new Intent(MainActivity.this, TopFantacyAppsActivity.class));
                } else if (id == R.id.nav_profile) {
                    startActivity(new Intent(MainActivity.this, ProfileActivity.class));
                } else if (id == R.id.redeem_points) {

                    final Dialog dialog = new Dialog(MainActivity.this);
                    dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
                    dialog.setContentView(R.layout.withdraw_dialouge);
                    dialog.getWindow().setLayout(ViewPager.LayoutParams.FILL_PARENT, ViewPager.LayoutParams.WRAP_CONTENT);
                    TextView amounttext = dialog.findViewById(R.id.editText_amount);
                    setMinimumAlert = dialog.findViewById(R.id.setAlertMinim);
                    pnumberedittext = dialog.findViewById(R.id.editText_googlepaynumber);
                    radioGroup = dialog.findViewById(R.id.radioGroup);

                    Button send_req = dialog.findViewById(R.id.send_request);
                    selectedId = radioGroup.getCheckedRadioButtonId();
                    radioButton1 = dialog.findViewById(selectedId);
                    setMinimumAlert.setText("Minimum " + String.valueOf(MINIMUM_AMOUNT) + " Coins Are Required For Redeem.");

                    send_req.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {

                            if (Integer.parseInt(total_earning) >= MINIMUM_AMOUNT) {
                                send_payment_request();
                            } else {
                                Toast.makeText(MainActivity.this, "Minimum " + MINIMUM_AMOUNT + " Coins Are Required.", Toast.LENGTH_SHORT).show();
                            }
                        }
                    });

                    if (total_earning != null)
                        amounttext.setText(String.valueOf(total_earning));
                    dialog.show();
                } else {
                    Toast.makeText(MainActivity.this, "Minimum Require Points is " + String.valueOf(MINIMUM_AMOUNT), Toast.LENGTH_SHORT).show();
                }
                drawerLayout.closeDrawer(GravityCompat.START);
                return true;
            }
        });
    }

    private void load_app_setting() {
        JsonArrayRequest request2 = new JsonArrayRequest(Request.Method.POST, GAMES_ + "app_setting.php", null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                for (int i = 0; i < response.length(); i++) {
                    try {
                        JSONObject object = response.getJSONObject(i);
                        PRIVACY_POLICY = object.getString("privacy_policy");
                        TERMS_CONDITIONS = object.getString("terms");
                        READ_ME = object.getString("read_me");

                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });
        RequestQueue queue2 = Volley.newRequestQueue(getApplicationContext());
        queue2.add(request2);

    }

    private void load_add() {
        JsonArrayRequest request3 = new JsonArrayRequest(Request.Method.POST, GAMES_ + "ads.php", null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                for (int i = 0; i < response.length(); i++) {
                    try {
                        JSONObject object = response.getJSONObject(i);
                        BANNER_AD_ID = object.getString("banner_ad");
                        INTERSTITIAL_AD_ID = object.getString("interstitial_ad");
                        NATIVE_AD_ID = object.getString("native_ad");

                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });

        RequestQueue queue3 = Volley.newRequestQueue(getApplicationContext());
        queue3.add(request3);


        adView = new AdView(this, getString(R.string.fb_banner_ad), AdSize.BANNER_HEIGHT_50);
        // Find the Ad Container
        LinearLayout adContainer = (LinearLayout) findViewById(R.id.banner_container);
        // Add the ad view to your activity layout
        adContainer.addView(adView);
        // Request an ad
        adView.loadAd();


        AdListener adListener = new AdListener() {
            @Override
            public void onError(Ad ad, AdError adError) {
                Log.e("ADI",String.valueOf(adError.getErrorMessage()));
//                   Toast.makeText(MainActivity.this, adError.getErrorMessage()+"", Toast.LENGTH_SHORT).show();
//                // Ad error callback
            }

            @Override
            public void onAdLoaded(Ad ad) {
                Log.e("ADI",String.valueOf(ad.toString()));
                // Ad loaded callback
            }

            @Override
            public void onAdClicked(Ad ad) {
                // Ad clicked callback
            }

            @Override
            public void onLoggingImpression(Ad ad) {
                // Ad impression logged callback
            }
        };
        // Request an ad
        adView.loadAd(adView.buildLoadAdConfig().withAdListener(adListener).build());
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle item selection
        switch (item.getItemId()) {
            case R.id.action_purchase:
                ///bp.subscribe(MainActivity.this, SUBSCRIPTION_ID);
                return true;
            case R.id.action_telegram:
                if (ApiConfig.TELEGRAM_BANNER_URL != null && !ApiConfig.TELEGRAM_BANNER_URL.isEmpty()) {
                    Uri uri = Uri.parse(ApiConfig.TELEGRAM_BANNER_URL);
                    Intent intent = new Intent(Intent.ACTION_VIEW, uri);
                    startActivity(intent);
                } else {
                    Toast.makeText(this, "No Url Found", Toast.LENGTH_SHORT).show();
                }

                return true;
            default:
                return super.onOptionsItemSelected(item);
        }
    }

    public BroadcastReceiver myReciver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(BrodcastStringForAction)) {
                if (intent.getStringExtra("online_status").equals("true")) {
//                    setVisibility_ON();
                } else {
//                    setVisibility_OFF();
                }
            }
        }
    };

    public Boolean isOnline(Context c) {
        ConnectivityManager cm = (ConnectivityManager) c.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo ni = cm.getActiveNetworkInfo();


        if (ni != null && ni.isConnectedOrConnecting())
            return true;
        else
            return false;
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        registerReceiver(myReciver, mIntentFilter);
    }

    @Override
    public void onPause() {
        super.onPause();
//        load_float_button();
//        show_float_button();
    }

    @Override
    public void onResume() {
        super.onResume();
        load_float_button();
        show_float_button();

        registerReceiver(myReciver, mIntentFilter);
        if (SaveSharedPreference.getLoggedStatus(getApplicationContext())) {
            navigationView.getMenu().findItem(R.id.nav_logout).setVisible(true);
            navigationView.getMenu().findItem(R.id.nav_terms_and_conditions).setVisible(true);
            navigationView.getMenu().findItem(R.id.nav_read_me).setVisible(true);
            navigationView.getMenu().findItem(R.id.refer_earn).setVisible(true);
            navigationView.getMenu().findItem(R.id.redeem_points).setVisible(true);
            navigationView.getMenu().findItem(R.id.nav_login).setVisible(false);
            // perform action when user is already logged in
        } else {
            navigationView.getMenu().findItem(R.id.nav_terms_and_conditions).setVisible(false);
            navigationView.getMenu().findItem(R.id.nav_read_me).setVisible(false);
            navigationView.getMenu().findItem(R.id.nav_logout).setVisible(false);
            navigationView.getMenu().findItem(R.id.refer_earn).setVisible(false);
//            navigationView.getMenu().findItem(R.id.nav_profile).setVisible(false);
            navigationView.getMenu().findItem(R.id.redeem_points).setVisible(false);
//            navigationView.getMenu().findItem(R.id.nav_login).setVisible(true);
            // perform action when user is not logged in
        }
    }

    public void setVisibility_ON() {
        if (no_interenet_design != null)
            no_interenet_design.setVisibility(View.GONE);
        fragment_home.setVisibility(View.VISIBLE);
    }

    public void setVisibility_OFF() {
        no_interenet_design.setVisibility(View.VISIBLE);
        retryButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = getIntent();
                finish();
                startActivity(intent);
            }
        });
        fragment_home.setVisibility(View.GONE);
        registerReceiver(myReciver, mIntentFilter);
    }

    @Override
    public void onDestroy() {

        if (adView != null) {
            adView.destroy();
        }
        unregisteredBrodcastReciver();
        super.onDestroy();
    }

    protected void unregisteredBrodcastReciver() {
        try {
            unregisterReceiver(myReciver);
            // unregisterReceiver(broadcastReceiver);
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }

    }

    @Override
    protected void onStart() {
        super.onStart();
//        load_float_button();
//        show_float_button();

    }

    @Override
    public void onBackPressed() {

        super.onBackPressed();
//        AlertDialog.Builder alertdialog = new AlertDialog.Builder(this);
//        alertdialog.setTitle(getString(R.string.app_name));
//        alertdialog.setMessage("Are you sure you want to exit?");
//
//        alertdialog.setPositiveButton("yes", new DialogInterface.OnClickListener() {
//            @Override
//            public void onClick(DialogInterface dialog, int which) {
////                System.exit(0);
////                finish();
//
//                Intent intent = new Intent(Intent.ACTION_MAIN);
//                intent.addCategory(Intent.CATEGORY_HOME);
//                startActivity(intent);
//
//            }
//        });
//
//        alertdialog.setNeutralButton("Rate Us", new DialogInterface.OnClickListener() {
//            @Override
//            public void onClick(DialogInterface dialog, int which) {
//                Uri uri = Uri.parse("https://play.google.com/store/apps/details?id=com.criccoach.predictiontipsfordream");
//                Intent intent = new Intent(Intent.ACTION_VIEW, uri);
//                startActivity(intent);
//            }
//        });
//
//        alertdialog.setNegativeButton("No", new DialogInterface.OnClickListener() {
//            @Override
//            public void onClick(DialogInterface dialog, int which) {
//                dialog.cancel();
//            }
//        });
//
//        AlertDialog alert = alertdialog.create();
//        alertdialog.show();

    }
    //Sort Matches Time//
    private ArrayList<Match_Model> sortArray(ArrayList<Match_Model> arrayList) {
        if (arrayList != null) {
            Collections.sort(arrayList, new Comparator<Match_Model>() {
                @Override
                public int compare(Match_Model o2, Match_Model o1) {
                    return o2.getMatch_time().compareTo(o1.getMatch_time());
                }
            });
        }
        return arrayList;
    }
    //Sort Matches Time//

}