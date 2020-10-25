import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:my_flutter/public.dart';

var indexPageHandler = new Handler(
	handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		return IndexPage();
	}
);

var loginPageHandler = new Handler(
	handlerFunc: (BuildContext context, Map<String, List<String>> params) {
		return LoginPage();
});