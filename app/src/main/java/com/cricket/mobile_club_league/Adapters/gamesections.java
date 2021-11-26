package com.cricket.mobile_club_league.Adapters;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.cricket.mobile_club_league.Model.Match_Model;
import com.cricket.mobile_club_league.R;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

import static com.cricket.mobile_club_league.ApiConfig.GAMES_;
import static com.cricket.mobile_club_league.MainActivity.gameModelList;
import static com.cricket.mobile_club_league.MainActivity.selectedPage;

public class gamesections extends Fragment {
    ArrayList<Match_Model> list = new ArrayList<>();
    private Match_Model match_model;


    public void setRestaurant(Match_Model match_model) {
        this.match_model = match_model;
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        return inflater.inflate(R.layout.layout_gamesections, container, false);
    }

    @Override
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);

        //  restuarantName.setText(resto.getGame_name());
        TextView restaurantDescription = view.findViewById(R.id.resto_description);
        // restaurantDescription.setText(resto.getDescription());


        // resto.setDishes(getAllDishes());
        RecyclerView dishesList = view.findViewById(R.id.dish_recycler);
        LinearLayoutManager layoutManager = new LinearLayoutManager(getContext());
        layoutManager.setOrientation(RecyclerView.VERTICAL);
        dishesList.setLayoutManager(layoutManager);

        dishAdapter.callback callback = new dishAdapter.callback() {
            @Override
            public void onDishClicked() {
                //add selected dish to user menu
            }
        };


        JsonArrayRequest request = new JsonArrayRequest(Request.Method.GET, GAMES_ + "getcricket.php", null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                list.clear();
                for (int i = 0; i < response.length(); i++) {
                    try {

                        // Toast.makeText(getContext(), response.toString(), Toast.LENGTH_SHORT).show();
                        JSONObject object = response.getJSONObject(i);
                        Match_Model match_model = new Match_Model();
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
                        String category = object.getString("category");

                           if(gameModelList.get(selectedPage).getGame_name().equals(category))
                           {
                            list.add(match_model);
                           }

//                            shimmerFrameLayout.stopShimmer();
//                            shimmerFrameLayout.setVisibility(View.GONE);
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    if (list.isEmpty()) {
                        //Toast.makeText(getActivity(), "Matches Not Found", Toast.LENGTH_SHORT).show();
                        //lottieAnimationView.setVisibility(View.VISIBLE);
                    }
                     ArrayList<Match_Model> mlist= sortArray(list);

                    CommonAdapter cricketAdapter = new CommonAdapter(list,getContext());
                    dishesList.setAdapter(cricketAdapter);
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });

        RequestQueue queue = Volley.newRequestQueue(getContext().getApplicationContext());
        queue.add(request);
    }


    //        private List<Match_Model> getAllMatches(){
//
//
//
//
////            //get dishes first
////            List<Match_Model> matches = new ArrayList<>();
////            Match_Model match_model = new Match_Model();
////            matches.add(new Match_Model("","","","","","",3,"",""));
////            matches.add(new Match_Model("","","","","","",3,"",""));
////            matches.add(new Match_Model("","","","","","",4,"",""));
////            matches.add(new Match_Model("","","","","","",1,"",""));
////            matches.add(new Match_Model("","","","","","",5,"",""));
////            matches.add(new Match_Model("","","","","","",2,"",""));
////            matches.add(new Match_Model("","","","","","",3,"",""));
////            matches.add(new Match_Model("","","","","","",3,"",""));
////            matches.add(new Match_Model("","","","","","",4,"",""));
////            matches.add(new Match_Model("","","","","","",1,"",""));
////            matches.add(new Match_Model("","","","","","",5,"",""));
////            matches.add(new Match_Model("","","","","","",2,"",""));
////
////
////
////            matches.add(match_model);
//
////            String[] dishNames = this.getResources().getStringArray(R.array.dishes);
////            String[] dishPics = this.getResources().getStringArray(R.array.dish_icons);
////            String[] dishDescription = this.getResources().getStringArray(R.array.dish_descriptions);
////
////            for(int i = 0;i < dishNames.length;i++){
////                String dish_name = dishNames[i];
////                String dish_description = dishDescription[i];
////                String dish_icon = dishPics[i];
////                dish dish = new dish(dish_name,dish_description,dish_icon);
////                dishes.add(dish);
////            }
//            return matches;
//        }
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

}

