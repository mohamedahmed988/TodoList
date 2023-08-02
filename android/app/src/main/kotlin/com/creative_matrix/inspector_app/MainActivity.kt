package com.creative_matrix.inspector_app
import android.Manifest
import android.app.ActivityManager
import android.app.AlertDialog
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.util.Log
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import android.widget.Toast
import androidx.annotation.NonNull
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.awaitAll


class MainActivity: FlutterActivity() {
    private val CHANNEL = "TokenAccess"
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)


        if (checkLocationPermission()) {
//            if (isMyServiceRunning(GetLocationServices::class.java)) return
//            val startIntent = Intent(this, GetLocationServices::class.java)
//            startIntent.action = "start"
//            startService(startIntent)
//            Log.e("SERVICE STARTED", "")


        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            if (call.method == "getToken") {
                var text  = call.argument<String>("token")
//                Toast.makeText(applicationContext, text, Toast.LENGTH_LONG).show()
                Constant.setToken(text,applicationContext);

            }
            else if(call.method=="clearCash"){
                Constant.clearLocation(applicationContext)
            }
            else {
                result.notImplemented()
            }
        }
    }

    val MY_PERMISSIONS_REQUEST_LOCATION = 99
    val  BACKGROUND_REQUEST_CODE=100



    fun checkLocationPermission(): Boolean {
        return if (ContextCompat.checkSelfPermission(this, Manifest.permission.ACCESS_FINE_LOCATION)
            != PackageManager.PERMISSION_GRANTED
        ) {

            // Should we show an explanation?
            if (ActivityCompat.shouldShowRequestPermissionRationale(
                    this,
                    Manifest.permission.ACCESS_FINE_LOCATION
                )
            ) {

                // Show an explanation to the user *asynchronously* -- don't block
                // this thread waiting for the user's response! After the user
                // sees the explanation, try again to request the permission.
                AlertDialog.Builder(this)
                    .setTitle("Location Permission")
                    .setMessage("Location Permission")
                    .setPositiveButton(
                        "Ok"
                    ) { dialogInterface, i -> //Prompt the user once explanation has been shown
                        ActivityCompat.requestPermissions(
                            this@MainActivity,
                            arrayOf(Manifest.permission.ACCESS_FINE_LOCATION),
                            MY_PERMISSIONS_REQUEST_LOCATION
                        )
                    }
                    .create()
                    .show()
            } else {
                // No explanation needed, we can request the permission.
                ActivityCompat.requestPermissions(
                    this, arrayOf(Manifest.permission.ACCESS_FINE_LOCATION,Manifest.permission.CAMERA, Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.READ_EXTERNAL_STORAGE),
                    MY_PERMISSIONS_REQUEST_LOCATION
                )
            }
            false
        } else {
            // Request for Background permission
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                ActivityCompat.requestPermissions(
                    this@MainActivity,
                    arrayOf(Manifest.permission.ACCESS_BACKGROUND_LOCATION,Manifest.permission.CAMERA, Manifest.permission.WRITE_EXTERNAL_STORAGE, Manifest.permission.READ_EXTERNAL_STORAGE),
                    BACKGROUND_REQUEST_CODE
                )
            }
            true
        }
    }



    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        when (requestCode) {
            MY_PERMISSIONS_REQUEST_LOCATION -> {

                // If request is cancelled, the result arrays are empty.
                if (grantResults.size > 0
                    && grantResults[0] == PackageManager.PERMISSION_GRANTED
                ) {

                    // permission was granted, yay! Do the
                    // location-related task you need to do.
                    if (ContextCompat.checkSelfPermission(
                            this,
                            Manifest.permission.ACCESS_FINE_LOCATION
                        )
                        == PackageManager.PERMISSION_GRANTED
                    ) {
                        if (isMyServiceRunning(GetLocationServices::class.java)) return
                        val startIntent = Intent(
                            this,
                            GetLocationServices::class.java
                        )
                        startIntent.action = "start"
                        startService(startIntent)
                        Log.e("SERVICE STARTED", "")
                    }
                } else {

                    // permission denied, boo! Disable the
                    // functionality that depends on this permission.
                    checkLocationPermission()
                }
                return
            }
            else ->{
                return
            }
        }
    }


    private fun isMyServiceRunning(serviceClass: Class<*>): Boolean {
        val manager = getSystemService(ACTIVITY_SERVICE) as ActivityManager
        for (service in manager.getRunningServices(Int.MAX_VALUE)) {
            if (serviceClass.name == service.service.className) {
                return true
            }
        }
        return false
    }
}
