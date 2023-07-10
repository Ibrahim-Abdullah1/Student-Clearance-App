// com.example.student_clearance_app
package com.example.student_clearance_app;

import androidx.multidex.MultiDexApplication;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainApplication extends MultiDexApplication {
  @Override
  public void onCreate() {
    super.onCreate();

    // Instantiate a FlutterEngine.
    FlutterEngine flutterEngine = new FlutterEngine(this);

    // Start executing Dart code in the FlutterEngine.
    flutterEngine.getDartExecutor().executeDartEntrypoint(
      DartExecutor.DartEntrypoint.createDefault()
    );

    // Register Plugins
    GeneratedPluginRegistrant.registerWith(flutterEngine);
  }
}