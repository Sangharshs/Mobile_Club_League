package com.cricket.mobile_club_league;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.widget.ImageView;

import com.android.volley.RequestQueue;
import com.cricket.mobile_club_league.Model.Match_Model;


public class SplashActivity extends AppCompatActivity {
    public static RequestQueue queue;
    public Match_Model match_model;
    private ImageView imageView1, imageView2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);

//        imageView1 = (ImageView)findViewById(R.id.img1);
//        imageView2 = (ImageView) findViewById(R.id.img2);


//        ScaleAnimation fade_in = new ScaleAnimation(0f, 1f, 0f, 1f, Animation.RELATIVE_TO_PARENT, 0.5f, Animation.RELATIVE_TO_PARENT, 0.5f);
//        fade_in.setDuration(2000);
//        fade_in.setFillAfter(true);
//        imageView2.startAnimation(fade_in);


        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent i = new Intent(SplashActivity.this, StarterActivity.class);
                i.putExtra("sa","s");
                //Intent is used to switch from one activity to another.
                startActivity(i);
                //invoke the SecondActivity.
                finish();
                //the current activity will get finished.
            }
        },3000);
    }

    public void moveImageToRightToCenter(ImageView img ,int screenWidth)
    {
        img.setTranslationX(screenWidth);
        img.animate()
                .translationX(0)
                .setDuration(2000)
                .setStartDelay(300);
    }

    public void moveImageToLeftToCenter(ImageView img ,int screenWidth)
    {
        img.setTranslationY(screenWidth);
        img.animate()
                .translationY(0)
                .setDuration(2000)
                .setStartDelay(300);
    }
//        TranslateAnimation anim = new TranslateAnimation( width/2, 0,height/2,height/2);// - originalPos[0] , 0, yDest - originalPos[1] );
//        anim.setDuration(3000);
//        anim.setFillAfter( true );
//        img.startAnimation(anim);
    @Override
    protected void onStart() {
        super.onStart();
    }
}