import 'dart:io';
import 'package:flutter/material.dart';
import 'android/android.app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if(Platform.isIOS){

  }else{
    runApp(AndroidApp());
  }
}



