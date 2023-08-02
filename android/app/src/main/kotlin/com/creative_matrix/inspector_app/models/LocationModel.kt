package com.creative_matrix.inspector_app.models

import com.google.gson.annotations.SerializedName

class LocationModel {
    @SerializedName(value = "lat")
    var lat: Double?=null;
    @SerializedName(value = "long")
    var long: Double?=null;
    @SerializedName(value = "dateTime")
    var dateTime:String?=null;

    constructor(lat: Double?, long: Double?, dateTime: String?) {
        this.lat = lat
        this.long = long
        this.dateTime = dateTime
    }

    override fun toString(): String {
        return "LocationModel(lat=$lat, long=$long, dateTime=$dateTime)"
    }


}