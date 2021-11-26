package com.cricket.mobile_club_league;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.Volley;
import com.cricket.mobile_club_league.util.SaveSharedPreference;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;

import static com.cricket.mobile_club_league.ApiConfig.GAMES_;
import static com.cricket.mobile_club_league.util.Utility.USER_NAME;

public class Refer_EarnActivity extends AppCompatActivity {

    Button inviteBtn;
    TextView referCodeText;
    String referCode, userID, username;
    TextView referResult;
    ImageButton copyImageButton;
    int total_refer=0;
    ImageView imageView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_refer__earn);

        inviteBtn = findViewById(R.id.inviteButton);
        referCodeText = findViewById(R.id.user_refer_id);
        referResult = findViewById(R.id.totalInvite);
        copyImageButton = findViewById(R.id.copycode);
        imageView = findViewById(R.id.s1);
        imageView.setImageResource(R.drawable.app_icon);
        getSharedP();
        getData();
        getButtons();
    }
    private void getSharedP() {
        SaveSharedPreference.getUserName(getApplicationContext(), username);
        SharedPreferences pref = getApplicationContext().getSharedPreferences("MyPref", 0); // 0 - for private mode
        username = pref.getString(USER_NAME, "");
    }

    private void getData() {
        JsonArrayRequest request3 = new JsonArrayRequest(Request.Method.POST, GAMES_ + "refer.php?username=" + username, null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                for (int i = 0; i < response.length(); i++) {
                    try {
                        JSONObject object = response.getJSONObject(i);
                        referCode = object.getString("userid");
                        referCodeText.setText(referCode);
                        if (referCode != null) {
                            String url = GAMES_ + "refercount.php?refer_code=" + referCode;
                            JsonArrayRequest request = new JsonArrayRequest(Request.Method.POST, url, null, new Response.Listener<JSONArray>() {
                                @Override
                                public void onResponse(JSONArray response) {
                                    referResult.setText("Your Invited Friends "+String.valueOf(response.length()));
                                  //  Toast.makeText(Refer_EarnActivity.this, String.valueOf(response.length()), Toast.LENGTH_SHORT).show();
                                    total_refer = response.length();
                                    for (int i = 0; i < response.length(); i++) {
                                        try {
                                            JSONObject object = response.getJSONObject(i);
                                        } catch (JSONException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                }
                            }, new Response.ErrorListener() {
                                @Override
                                public void onErrorResponse(VolleyError error) {

                                }
                            });
                            RequestQueue queue = Volley.newRequestQueue(getApplicationContext());
                            queue.add(request);
                        }
                        //   Toast.makeText(Refer_EarnActivity.this, String.valueOf(response.length()), Toast.LENGTH_SHORT).show();
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

            }
        });
        RequestQueue queue3 = Volley.newRequestQueue(getApplicationContext());
        queue3.add(request3);


    }
    private Integer[] imageIDs = {
            R.drawable.app_icon
    };
    private void getButtons() {
        copyImageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!referCode.isEmpty()) {
                    ClipboardManager clipboard = (ClipboardManager) getSystemService(CLIPBOARD_SERVICE);
                    ClipData clip = ClipData.newPlainText("label", referCode);
                    assert clipboard != null;
                    clipboard.setPrimaryClip(clip);
                    Toast.makeText(Refer_EarnActivity.this, "Copied", Toast.LENGTH_SHORT).show();
                }
            }
        });

        inviteBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String share_content =   "CricCoach - Fantasy Dream Team Prediction & Players Stats \n" +
                        "\n" +
                        "\uD83D\uDCA5 Probable 11 for All Matches & Final Teams\n" +
                        "\n" +
                        "\uD83D\uDD25 Sport Fantasy Tips and Expert Advice For All Cricket Match \n" +
                        "\n" +
                        "\uD83D\uDCA5 Pro Tips and Predictions\n" +
                        "\n" +
                        "\uD83D\uDD25 *Fantasy App Offers for Dream11, Myteam11, fantafeat, batball11 etc\n" +
                        "\n" +
                        "✅ जिसने भी  Dream11 Loss किया हे औ ये एकबार इस एप्लीकेशन को  ट्राय करसकते हे\n" +
                        "✅ फ्री में लगाओ और पैसा जीतो अनलिमिटेड \n" +
                        "\n" +
                        "\uD83D\uDCA5 Play Games and earn money\n" +
                        "\n" +
                        "\uD83D\uDC47\uD83C\uDFFE Download Application" + "\n https://play.google.com/store/apps/details?id=com.criccoach.predictiontipsfordream" +
                        "\n" +
                        "Use Refer Code: "+referCode;
                Toast.makeText(Refer_EarnActivity.this, "Wait..", Toast.LENGTH_SHORT).show();

                Bitmap b =BitmapFactory.decodeResource(getResources(),R.drawable.app_icon);
                Intent share = new Intent(Intent.ACTION_SEND);
                share.setType("image/jpeg");
                ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                b.compress(Bitmap.CompressFormat.JPEG, 100, bytes);
                String path = MediaStore.Images.Media.insertImage(getContentResolver(), b, "", null);
                Uri imageUri =  Uri.parse(path);
                share.putExtra(Intent.EXTRA_STREAM, imageUri);
                share.putExtra(Intent.EXTRA_TEXT,share_content);
                startActivity(Intent.createChooser(share, "Select"));
            }

        });
    }

//    private boolean checkWriteExternalPermission()
//    {
//        String permission = android.Manifest.permission.WRITE_EXTERNAL_STORAGE;
//        int res = getContext().checkCallingOrSelfPermission(permission);
//        return (res == PackageManager.PERMISSION_GRANTED);
//    }

}