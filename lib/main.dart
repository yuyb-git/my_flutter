import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:my_flutter/public.dart';


void main() {
    runApp(MyApp());
    if(Platform.isAndroid){
		SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
			systemNavigationBarColor: Color(0xffffffff),
			systemNavigationBarIconBrightness: Brightness.light,
			systemNavigationBarDividerColor: Color(0xffffffff),
			statusBarColor: Colors.black,
			statusBarIconBrightness: Brightness.light,
			statusBarBrightness: Brightness.light,
		);
		SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
    	final route = FluroRouter();
    	//Routes.con
    }
}



