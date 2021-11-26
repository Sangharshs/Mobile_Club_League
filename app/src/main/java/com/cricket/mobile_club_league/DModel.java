package com.cricket.mobile_club_league;

import com.cricket.mobile_club_league.ui.cricket_fragment.CricketFragment;

public class DModel {
    Class<CricketFragment> cricketFragmentClass;
    String title;

    public Class<CricketFragment> getCricketFragmentClass() {
        return cricketFragmentClass;
    }

    public void setCricketFragmentClass(Class<CricketFragment> cricketFragmentClass) {
        this.cricketFragmentClass = cricketFragmentClass;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public DModel(Class<CricketFragment> cricketFragmentClass, String title) {
        this.cricketFragmentClass = cricketFragmentClass;
        this.title = title;
    }
}
