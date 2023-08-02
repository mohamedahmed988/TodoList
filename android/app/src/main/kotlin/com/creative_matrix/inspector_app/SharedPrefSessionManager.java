package com.creative_matrix.inspector_app;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;


public class SharedPrefSessionManager {
    private static final String PREF_NAME = "App_NAME";

    SharedPreferences pref;
    Editor editor;
    public static SharedPrefSessionManager instance = null;

    public SharedPrefSessionManager(Context context) {
        pref = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        editor = pref.edit();
    }

    public SharedPrefSessionManager() {
    }

    public static SharedPrefSessionManager getInstance() {
        if (instance == null) {
            instance = new SharedPrefSessionManager();
        }
        return instance;

    }

}
