package com.creative_matrix.inspector_app;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.os.Build;

import io.flutter.app.FlutterApplication;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.common.PluginRegistry.PluginRegistrantCallback;


public class App extends FlutterApplication implements PluginRegistrantCallback {
    public static final String NOTIFICATION_CHANNEL_ID_SERVICE = "com.mypackage.service";
    public static final String NOTIFICATION_CHANNEL_ID_INFO = "com.mypackage.download_info";

    @Override
    public void onCreate() {
        super.onCreate();
        SharedPrefSessionManager.instance = new SharedPrefSessionManager(this);
        initChannel();
    }

    @Override
    public void registerWith(PluginRegistry registry) { }


    public void initChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
            nm.createNotificationChannel(new NotificationChannel(NOTIFICATION_CHANNEL_ID_SERVICE, "App Service", NotificationManager.IMPORTANCE_DEFAULT));
            nm.createNotificationChannel(new NotificationChannel(NOTIFICATION_CHANNEL_ID_INFO, "Download Info", NotificationManager.IMPORTANCE_DEFAULT));
        }
    }
}
