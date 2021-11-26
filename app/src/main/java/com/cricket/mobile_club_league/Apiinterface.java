package com.cricket.mobile_club_league;

import com.cricket.mobile_club_league.Model.RetrfitModel;

import retrofit2.Call;
import retrofit2.http.GET;

public interface Apiinterface {
    @GET("posts")
    Call<RetrfitModel>getData();

}
