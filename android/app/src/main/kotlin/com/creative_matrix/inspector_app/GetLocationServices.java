package com.creative_matrix.inspector_app;

import static com.creative_matrix.inspector_app.Constant.getLocation;

import android.Manifest;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;

import com.creative_matrix.inspector_app.models.LocationModel;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import org.json.JSONArray;
import org.json.JSONException;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;


public class GetLocationServices extends Service {

    public static final String TAG = "GetLocationServices";
    LocationManager locationManager;
    Handler handler;
    Location location;
    Context context;


    public Notification showNotificationInForeground(Context context) {

        final String NOTIFICATION_CHANNEL_ID_INFO = "CHANNEL_ID";
        Notification notificationBuilder = new NotificationCompat.Builder(context, NOTIFICATION_CHANNEL_ID_INFO)
                .setColor(ContextCompat.getColor(context, android.R.color.black))
                .setSmallIcon(R.mipmap.ic_launcher)
                .setLargeIcon(largeIcon(context))
                .setContentTitle("MY APP")
                .setDefaults(Notification.DEFAULT_VIBRATE)
                .setOngoing(true)
                .setAutoCancel(false)
                .setAutoCancel(true).build();

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            String id = "my_channel_01";
            int importance = NotificationManager.IMPORTANCE_HIGH;
            NotificationChannel mChannel = null;
            mChannel = new NotificationChannel(id, "name", importance);
            mChannel.enableLights(true);
            NotificationManager mNotificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
            mNotificationManager.createNotificationChannel(mChannel);
        }

        return notificationBuilder;


    }

    private static Bitmap largeIcon(Context context) {
        Resources res = context.getResources();
        Bitmap largeIcon = BitmapFactory.decodeResource(res, R.mipmap.ic_launcher);
        return largeIcon;
    }

    @RequiresApi(api = Build.VERSION_CODES.O)
    @Override
    public void onCreate() {
        super.onCreate();
        startBackgroundOperation();
    }

    public Runnable runLocation = new Runnable() {
        @Override
        public void run() {

            try {
                sendLocationUpdates();
            } catch (JSONException e) {
                e.printStackTrace();
            }
            handler.postDelayed(runLocation, 1000*10);  // 10 sec
        }
    };

    private void sendLocationUpdates() throws JSONException {
        if(!Constant.getToken(this).isEmpty()&& !Constant.getLocation(this).isEmpty()) {

            String allLocationsStr = getLocation(context);
//                        Toast.makeText(getApplicationContext(),"allLocationsStr "+allLocationsStr,Toast.LENGTH_LONG).show();

            JSONArray jsonArray = null;
            try {
                jsonArray = new JSONArray(allLocationsStr);
//            Toast.makeText(getApplicationContext(),jsonArray.toString(),Toast.LENGTH_LONG).show();

            } catch (JSONException e) {
                e.printStackTrace();
            }


            Retrofit retrofit = new Retrofit.Builder()
//                .client(client)
                    .addConverterFactory(GsonConverterFactory.create())
                    .baseUrl("https://api-riyadh.alx-sa.com/api/")
                    .build();

            RetrofitInterface retrofitInterface = retrofit.create(RetrofitInterface.class);
//            Log.e(TAG, "RequestBody " + jsonArray.toString());
//            Toast.makeText(getApplicationContext(),"RequestBody "+jsonArray.toString(),Toast.LENGTH_LONG).show();

            ArrayList<LocationModel> arrayList = new ArrayList<>();
            Gson gson = new Gson();
            if(jsonArray!=null) {
                for (int i = 0; i < jsonArray.length(); i++) {
                    arrayList.add(gson.fromJson(jsonArray.get(i).toString(), LocationModel.class));
                }
            }
//            Toast.makeText(getApplicationContext(),"RequestBody: "+text,Toast.LENGTH_LONG).show();

            Call<JsonObject> call2 = retrofitInterface.trackTechnician(arrayList,
                    "Bearer " + Constant.getToken(this));
            call2.enqueue(new Callback<JsonObject>() {
                @Override
                public void onResponse(Call<JsonObject> call, Response<JsonObject> response) {
                    //    if (response.isSuccessful()) {
                    Log.e(TAG, "SuccesResponse " + response.toString());

                    if (response.isSuccessful()) {
                        Log.e(TAG, "SuccesResponse 2" + response.body().toString());
//                        Toast.makeText(getApplicationContext(),"SuccesResponse " + response.body().toString(),Toast.LENGTH_LONG).show();
                        try {
                            Constant.clearLocation(getApplicationContext());
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                    }
                    else{
//                        Toast.makeText(getApplicationContext(),"FailResponse " + response.toString(),Toast.LENGTH_LONG).show();
                    }

                    //   Toast.makeText(getApplicationContext(),Constant.getGPS_Longitude(getApplicationContext())+" "+Constant.getGPS_Latitude(getApplicationContext()),Toast.LENGTH_LONG).
                    //    show();
                    //  }
                }

                @Override
                public void onFailure(Call<JsonObject> call, Throwable t) {
                    Log.e(TAG, "ErrorError: " + t.getMessage());

                }
            });
        }
    }

    final private int REQUEST_CODE_ASK_PERMISSIONS = 123;

    @RequiresApi(api = Build.VERSION_CODES.O)
    public void startBackgroundOperation() {
        handler = new Handler();
        locationManager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION)
                != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission
                (this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            return;
        }
        locationManager.requestLocationUpdates(LocationManager.NETWORK_PROVIDER, 1000*9, 0, new android.location.LocationListener() {
            @RequiresApi(api = Build.VERSION_CODES.O)
            @Override
            public void onLocationChanged(Location location) {
//                Toast.makeText(getApplicationContext(),"loc listen ",Toast.LENGTH_LONG).show();

                try {
                    Constant.setLocation(location,context);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }

            @Override
            public void onStatusChanged(String provider, int status, Bundle extras) {

            }

            @Override
            public void onProviderEnabled(String provider) {

            }

            @Override
            public void onProviderDisabled(String provider) {

            }
        });
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED && ActivityCompat.checkSelfPermission(this, Manifest.permission.ACCESS_COARSE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            return;
        }
        location = locationManager.getLastKnownLocation(LocationManager.NETWORK_PROVIDER);
        if (location != null){
            try {
                Constant.setLocation(location,getApplicationContext());
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        handler.postDelayed(runLocation, 5000);
        context = getApplicationContext();


        if (Build.VERSION.SDK_INT >= 26) {
            String CHANNEL_ID = "my_channel_01";
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID,
                    "Title",
                    NotificationManager.IMPORTANCE_DEFAULT);
            ((NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE)).createNotificationChannel(channel);
            Notification notification = new NotificationCompat.Builder(this, CHANNEL_ID)
                    .setSmallIcon(R.mipmap.logo)
                    .setContentTitle("Location tracking")
                    .setContentText("Location tracking is running.").build();
            startForeground(1, notification);
        }
        //  startForeground(101, showNotificationInForeground(context));
        // startForeground();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return START_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Intent startIntent = new Intent(this, GetLocationServices.class);
        startIntent.setAction("start");
        startService(startIntent);
    }


    private void startForeground() {
        String channelId = "";
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            channelId = createNotificationChannel("my_service", "My Background Service");
        } else {
            // If earlier version channel ID is not used
            // https://developer.android.com/reference/android/support/v4/app/NotificationCompat.Builder.html#NotificationCompat.Builder(android.content.Context)
            channelId = "";
        }

        Notification notificationBuilder = new NotificationCompat.Builder(this, channelId ).
                setOngoing(true)
                .setSmallIcon(R.mipmap.ic_launcher)
                .setCategory(Notification.CATEGORY_SERVICE)
                .build();
        startForeground(101, notificationBuilder);
    }

    @RequiresApi(Build.VERSION_CODES.O)
    private String createNotificationChannel(String channelId, String channelName){
        NotificationChannel chan = new NotificationChannel(channelId,
                channelName, NotificationManager.IMPORTANCE_NONE);
        chan.setLightColor(Color.BLUE);
        chan.setLockscreenVisibility(Notification.VISIBILITY_PRIVATE);
        NotificationManager service = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        service.createNotificationChannel(chan);
        return channelId;
    }



}
