package com.cricket.mobile_club_league;

import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.cricket.mobile_club_league.Adapters.CommonAdapter;
import com.cricket.mobile_club_league.Adapters.dishAdapter;
import com.cricket.mobile_club_league.Model.GameModel;
import com.cricket.mobile_club_league.Model.Match_Model;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

import cn.iwgang.countdownview.CountdownView;

import static com.cricket.mobile_club_league.ApiConfig.GAMES_;
import static com.facebook.FacebookSdk.getApplicationContext;

public class restuarant extends Fragment {

    private GameModel match_model;
    RecyclerView matches_recyclerView;
    public void setRestaurant(GameModel restaurant) {
        this.match_model = restaurant;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.layout_restaurant,container,false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
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

        mCvCountdownView = view.findViewById(R.id.mycountdown);

        team1_full = view.findViewById(R.id.team1_full);
        team2_full = view.findViewById(R.id.team2_full);
        team1_image = view.findViewById(R.id.team1_image);
        team2_image = view.findViewById(R.id.team2_image);

        match_name  = view.findViewById(R.id.match_name);

        dummy = view.findViewById(R.id.dummy);
        text_days      = view.findViewById(R.id.text_days);
        text_hours       = view.findViewById(R.id.text_hours);
        text_minutes     = view.findViewById(R.id.text_minute);
        text_seconds     = view.findViewById(R.id.text_seconds);

        dot_imageview = view.findViewById(R.id.image_dot);

        team_name1  = view.findViewById(R.id.team_name1);
        team_name2  = view.findViewById(R.id.team_name2);

        match_progress = view.findViewById(R.id.match_progress);
        team_status    = view.findViewById(R.id.team_status);

        ratingBar      = view.findViewById(R.id.ratingBar);

        c = view.findViewById(R.id.c);
        p = view.findViewById(R.id.p);
        t = view.findViewById(R.id.t);




//        match_model.setDishes(getAllDishes());
        matches_recyclerView = view.findViewById(R.id.match_item_List);
        matches_recyclerView.hasFixedSize();
        matches_recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));

        dishAdapter.callback callback = new dishAdapter.callback() {
            @Override
            public void onDishClicked() {
                //add selected dish to user menu
            }
        };

        dishAdapter allDishes = new dishAdapter(getActivity(),getAllMatches(),callback);
        matches_recyclerView.setAdapter(allDishes);
    }


    private ArrayList<Match_Model> getAllMatches(){

        //get dishes first
        ArrayList<Match_Model> match_modelList = new ArrayList<>();

        JsonArrayRequest request = new JsonArrayRequest(Request.Method.GET, GAMES_ + "getcricket.php", null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                match_modelList.clear();
                for (int i = 0; i < response.length(); i++) {
                    try {
                        // Toast.makeText(getContext(), response.toString(), Toast.LENGTH_SHORT).show();
                        JSONObject object = response.getJSONObject(i);
                        match_model = new GameModel();
//                        match_model.setMatchId(object.getString("id"));
//                        match_model.setPlayer1_profile(object.getString("team1_image"));
//                        match_model.setPlayer2_profile(object.getString("team2_image"));
//                        match_model.setMatch_name(object.getString("match_name"));
//                        match_model.setPlayer1_name(object.getString("team1_name"));
//                        match_model.setPlayer2_name(object.getString("team2_name"));
//                        match_model.setMatch_progress(object.getString("match_status"));
//                        match_model.setTeam_status(object.getString("team_status"));
//                        match_model.setMatch_rating(object.getInt("match_rating"));
//                        match_model.setMatch_time(object.getString("date_time"));
//                        match_model.setTeam1_fullname(object.getString("team1_full"));
//                        match_model.setTeam2_fullname(object.getString("team2_full"));
//                        match_modelList.add(match_model);
                      //  category = object.getString("category");



                    } catch (JSONException | IndexOutOfBoundsException e) {
                        e.printStackTrace();
                    }




                    //ArrayList<Match_Model> list = sortArray((ArrayList<Match_Model>) match_modelList);
                    CommonAdapter cricketAdapter = new CommonAdapter(getAllMatches(),getContext());
                    matches_recyclerView.setAdapter(cricketAdapter);
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });

        RequestQueue queue = Volley.newRequestQueue(getApplicationContext());
        queue.add(request);
        queue.addRequestFinishedListener(new RequestQueue.RequestFinishedListener<Object>() {
            @Override
            public void onRequestFinished(Request<Object> request) {
                if(getAllMatches().size() == 0){
///                 lottieAnimationView.setVisibility(View.VISIBLE);
                    Toast.makeText(getApplicationContext(), "No Matches Found", Toast.LENGTH_SHORT).show();
                }
            }
        });
        queue.getCache().clear();


        return match_modelList;
    }


}
