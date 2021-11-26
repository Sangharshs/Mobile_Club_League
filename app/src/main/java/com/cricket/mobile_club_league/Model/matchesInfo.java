package com.cricket.mobile_club_league.Model;

import java.util.ArrayList;

public class matchesInfo {
    private String restaurantName;
    private String description;
    private String logoName;
    private ArrayList<dish> dishes;

    public matchesInfo(){
    }

    public matchesInfo(String restaurantName, String description, String logoName) {
        this.restaurantName = restaurantName;
        this.description = description;
        this.logoName = logoName;
    }

    public String getRestaurantName() {
        return restaurantName;
    }

    public void setRestaurantName(String restaurantName) {
        this.restaurantName = restaurantName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLogoName() {
        return logoName;
    }

    public void setLogoName(String logoName) {
        this.logoName = logoName;
    }

    public ArrayList<dish> getDishes() {
        return dishes;
    }

    public void setDishes(ArrayList<dish> dishes) {
        this.dishes = dishes;
    }
}
