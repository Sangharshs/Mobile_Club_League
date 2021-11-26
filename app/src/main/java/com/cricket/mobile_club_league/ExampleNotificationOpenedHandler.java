package com.cricket.mobile_club_league;

import android.content.Context;

public class ExampleNotificationOpenedHandler {

    Context context2;

    ExampleNotificationOpenedHandler(Context context) {
        context2 = context;
    }

//    @Override
//    public void notificationOpened(OSNotificationOpenResult result) {
//        OSNotificationAction.ActionType actionType = result.action.type;
//        JSONObject data = result.notification.payload.additionalData;
//        String customKey;
//
//        Intent intent = new Intent(context2,MainActivity.class);
//        intent.setFlags(Intent.FLAG_ACTIVITY_REORDER_TO_FRONT | Intent.FLAG_ACTIVITY_NEW_TASK);
//        context2.startActivity(intent);
//
//
//        if (data != null) {
//            customKey = data.optString("customkey", null);
//            if (customKey != null)
//                Log.e("OneSignalExample", "customkey set with value: " + customKey);
//        }
//
//        if (actionType == OSNotificationAction.ActionType.ActionTaken)
//        {
//            Log.i("OneSignalExample", "Button pressed with id: " + result.action.actionID);
//
//
//        }
//    }
}
