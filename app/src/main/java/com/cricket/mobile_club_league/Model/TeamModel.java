package com.cricket.mobile_club_league.Model;

public class TeamModel {
   String teamImgUrl;
   String teamInfo;

    public TeamModel(String teamImgUrl, String teamInfo) {
        this.teamImgUrl = teamImgUrl;
        this.teamInfo = teamInfo;
    }

    public String getTeamImgUrl() {
        return teamImgUrl;
    }

    public void setTeamImgUrl(String teamImgUrl) {
        this.teamImgUrl = teamImgUrl;
    }

    public String getTeamInfo() {
        return teamInfo;
    }

    public void setTeamInfo(String teamInfo) {
        this.teamInfo = teamInfo;
    }
}
