package com.cricket.mobile_club_league.Adapters;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
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

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.iwgang.countdownview.CountdownView;

import static com.cricket.mobile_club_league.ApiConfig.IMG;

public class dishAdapter extends RecyclerView.Adapter<dishAdapter.distViewHolder>{

    private Context dishContx;
    private List<Match_Model> match_model_list = new ArrayList<>();
    private callback listener;

    public dishAdapter(Context dishContx, List<Match_Model> match_model_list, callback listener) {
        this.dishContx = dishContx;
        this.match_model_list = match_model_list;
        this.listener = listener;
    }

    @NonNull
    @Override
    public distViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(dishContx);
        View itemView = inflater.inflate(R.layout.match_iteam, parent ,false);
        return new distViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull distViewHolder holder, int position) {

        //Match_Model dish = match_model_list.get(position);
        if(match_model_list.get(position).getPlayer1_profile() != null && !match_model_list.get(position).getPlayer1_profile().isEmpty()) {
            Glide.with(holder.team1_image.getContext()).load(IMG + match_model_list.get(position).getPlayer1_profile()).into(holder.team1_image);
        }
        if(match_model_list.get(position).getPlayer1_profile() != null && !match_model_list.get(position).getPlayer1_profile().isEmpty()) {
            Glide.with(holder.team2_image.getContext()).load(IMG+match_model_list.get(position).getPlayer2_profile()).into(holder.team2_image);
        }
        holder.team_name1.setText(match_model_list.get(position).getPlayer1_name());
        holder.team_name2.setText(match_model_list.get(position).getPlayer2_name());

        holder.match_name.setText(match_model_list.get(position).getMatch_name());
        holder.match_progress.setText(match_model_list.get(position).getMatch_progress());

        holder.dot_imageview.setVisibility(View.GONE);
        if(match_model_list.get(position).getMatch_progress().equals("Covering")){
            holder.dot_imageview.setVisibility(View.VISIBLE);
        }
        if(match_model_list.get(position).getMatch_progress().equals("Not Covering")){
            holder.match_progress.setTextColor(Color.RED);
            holder.dot_imageview.setImageResource(R.drawable.red_round);
            holder.dot_imageview.setVisibility(View.VISIBLE);
        }
        if(match_model_list.get(position).getTeam_status().equals("Team Coming Soon")){
            holder.team_status.setTextColor(Color.RED);
        }
        if(match_model_list.get(position).getTeam_status().equals("Pre-Toss Team is Published")){
            holder.team_status.setTextColor(holder.itemView.getResources().getColor(R.color.orangeText));
        }
        if(match_model_list.get(position).getTeam_status().equals("Final Team is Published")){
            holder.team_status.setTextColor(holder.itemView.getResources().getColor(R.color.green));
        }


        //dummy.setText(match_model_list.getMatch_details());


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


        holder.team_status.setText(match_model_list.get(position).getTeam_status());

        holder.ratingBar.setRating(match_model_list.get(position).getMatch_rating());
        if(match_model_list.get(position).getMatch_rating() == 0){
            holder.ratingBar.setVisibility(View.GONE);
        }
        //
        CountDownTimer unused = holder.timer = new CountDownTimer(Utility.convertTimeInMillis("yyyy-MM-dd HH:mm:ss",match_model_list.get(position).getMatch_time()) - System.currentTimeMillis(), 1000) {
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
                listener.onDishClicked();
                if ((match_model_list.get(position).getMatch_rating()) != 0) {
                    Intent intent = new Intent(v.getContext(), MatchDetailsActivity.class);
                    intent.putExtra("id", match_model_list.get(position).getMatchId());
                    v.getContext().startActivity(intent);
                }else {
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

    public interface callback{
        void onDishClicked();
    }

    @Override
    public int getItemCount() {
        return match_model_list.size();
    }

    class distViewHolder extends RecyclerView.ViewHolder {
        //instanciate views
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
        ImageButton order;
        distViewHolder(@NonNull View itemView) {
            super(itemView);
            mCvCountdownView = itemView.findViewById(R.id.mycountdown);


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
        }
    }

}