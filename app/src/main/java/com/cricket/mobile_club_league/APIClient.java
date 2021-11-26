package com.cricket.mobile_club_league;


import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;


public class APIClient {
    private static String baseUrl = "https://jsonplaceholder.typicode.com/";

    static Gson gson = new GsonBuilder()
            .setLenient()
            .create();
    private static retrofit2.Retrofit retrofit;
    public static retrofit2.Retrofit getRetrofit(){

        if(retrofit == null){

            retrofit = new Retrofit.Builder()
            .baseUrl(baseUrl)
            .addConverterFactory(GsonConverterFactory.create(gson))
            .build();
        }

        return retrofit;
    }
}
