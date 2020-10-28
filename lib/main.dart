import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:my_flutter/public.dart';
import 'package:my_flutter/pages/splash_page.dart';


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
    	final router = FluroRouter();
	    Routes.configureRoutes(router);
	    Routes.router = router;
	
	    return Container(
		    child: MaterialApp(
			    title: "HRL微博",
			    debugShowCheckedModeBanner: false,
			    theme: ThemeData(primaryColor: Colors.white),
			    onGenerateRoute: Routes.router.generator,
			    home: SplashPage()),
	    );
    }
}



