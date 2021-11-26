package com.cricket.mobile_club_league.Model;

public class GameModel {
String  gameIcon;
String game_name;
String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public GameModel(String id) {
        this.id = id;
    }

    public GameModel() {

    }


    public String getGameIcon() {
        return gameIcon;
    }

    public void setGameIcon(String gameIcon) {
        this.gameIcon = gameIcon;
    }

    public String getGame_name() {
        return game_name;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public GameModel(String gameIcon, String game_name) {
        this.gameIcon = gameIcon;
        this.game_name = game_name;
    }
}
