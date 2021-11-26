package com.cricket.mobile_club_league.Model;

public class Player_Details {
    String id;
    String playersPreview;

    public Player_Details(String id, String playersPreview) {
        this.id = id;
        this.playersPreview = playersPreview;
    }

    public Player_Details() {

    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPlayersPreview() {
        return playersPreview;
    }

    public void setPlayersPreview(String playersPreview) {
        this.playersPreview = playersPreview;
    }
}
