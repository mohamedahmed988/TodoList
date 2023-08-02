package com.creative_matrix.inspector_app;

import android.widget.Toast;

import com.creative_matrix.inspector_app.models.LocationModel;
import com.google.gson.JsonObject;

import org.json.JSONArray;

import java.util.List;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.Header;
import retrofit2.http.POST;

public interface RetrofitInterface {
    @POST("Inspectors/Inspector/Track")
    public Call<JsonObject> trackTechnician(@Body List<LocationModel> map, @Header("Authorization") String token);

}