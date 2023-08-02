package com.creative_matrix.inspector_app;

import static android.content.Context.MODE_PRIVATE;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Location;
import android.os.Build;
import android.widget.Toast;

import androidx.annotation.RequiresApi;

import com.creative_matrix.inspector_app.models.LocationModel;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class Constant {
    private static String MyPREFERENCES = "Aura";


//    public static String getGPS_Longitude(Context context) {
//        SharedPreferences prefs = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE);
//        String GPS_Longitude = prefs.getString("GPS_Longitude", "");
//        return GPS_Longitude;
//    }
//
//
//    public static String getGPS_Latitude(Context context) {
//        SharedPreferences prefs = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE);
//        String GPS_Latitude = prefs.getString("GPS_Latitude", "");
//        //return GPS_Latitude;
//        return GPS_Latitude;
//    }


    @RequiresApi(api = Build.VERSION_CODES.O)
    public static void setLocation(Location location, Context context) throws JSONException {

        String allLocationsStr=getLocation(context);


        JSONArray jsonArray = null;
        try {
            jsonArray = new JSONArray(allLocationsStr);
//            Toast.makeText(getApplicationContext(),jsonArray.toString(),Toast.LENGTH_LONG).show();

        } catch (JSONException e) {
            e.printStackTrace();
        }

        ArrayList<LocationModel> allLocationsList = new ArrayList<>();
        Gson gson = new Gson();
        if(jsonArray!=null) {
            JSONObject object;
            for (int i = 0; i < jsonArray.length(); i++) {
                object = jsonArray.getJSONObject(i);
//                allLocationsList.add(new LocationModel((object.getDouble("a")),object.getDouble("b"),object.getString("c")));

                allLocationsList.add(gson.fromJson(jsonArray.getJSONObject(i).toString(), LocationModel.class));
//                Toast.makeText(context, "jsonObject " + jsonArray.getJSONObject(i).toString(), Toast.LENGTH_LONG).show();

            }
        }

        Date currentTime = Calendar.getInstance().getTime();

        String dateTime= new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SS'Z'").format(currentTime);
        dateTime=replaceArabicِNumber(dateTime);
//        Instant instant=Instant.now();


//        String dateTime=instant.toString();
//        Toast.makeText(context,  dateTime+"وقت ", Toast.LENGTH_SHORT).show();
//        Toast.makeText(context,  location.getLongitude()+" loc ", Toast.LENGTH_SHORT).show();

        LocationModel locationModel=new LocationModel(location.getLatitude(),location.getLongitude(), dateTime);
        allLocationsList.add(locationModel);
//        Toast.makeText(context, "list item "+allLocationsList.toString(), Toast.LENGTH_SHORT).show();


        allLocationsStr=gson.toJson(allLocationsList);



        SharedPreferences.Editor editor = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE).edit();
        editor.putString("location", allLocationsStr);
        editor.commit();
    }

    public static String getLocation(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE);
        String GPS_Latitude = prefs.getString("location", "");
        //return GPS_Latitude;
        return GPS_Latitude;
    }

    public static void clearLocation(Context context) throws JSONException {


        SharedPreferences.Editor editor = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE).edit();
        editor.putString("location", "");
        editor.commit();
    }


//    public static void setGPS_Latitude(String GPS_Latitude, Context context) {
//        SharedPreferences.Editor editor = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE).edit();
//        editor.putString("GPS_Latitude", GPS_Latitude);
//        editor.commit();
//        //this.GPS_Latitude = GPS_Latitude;
//    }
//
//    public static void setGPS_Longitude(String GPS_Longitude, Context context) {
//        SharedPreferences.Editor editor = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE).edit();
//        editor.putString("GPS_Longitude", GPS_Longitude);
//        editor.commit();
//
//    }
static String replaceArabicِNumber(String input) {
    String[] english = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
    String[] arabic = {"٠", "١", "٢", "٣", "٤", "٥", "٦", "٧", "٨", "٩"};

    for (int i = 0; i < english.length; i++) {
        input = input.replaceAll(arabic[i],english[i]);
    }
    return input;
}
    public static String getToken(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE);
        String GPS_Latitude = prefs.getString("TOKEN", "");
        //return GPS_Latitude;
        return GPS_Latitude;
    }


    public static void setToken(String token, Context context) {
        SharedPreferences.Editor editor = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE).edit();
        editor.putString("TOKEN", token);
        editor.commit();
        //this.GPS_Latitude = GPS_Latitude;
    }

    public static String getUserID(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE);
        String GPS_Latitude = prefs.getString("USER_ID", "0");
        //return GPS_Latitude;
        return GPS_Latitude;
    }


    public static void setUserID(String GPS_Latitude, Context context) {
        SharedPreferences.Editor editor = context.getSharedPreferences(MyPREFERENCES, MODE_PRIVATE).edit();
        editor.putString("USER_ID", GPS_Latitude);
        editor.commit();
        //this.GPS_Latitude = GPS_Latitude;
    }

}
