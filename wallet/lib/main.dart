import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:wallet/screen/WASplashScreen.dart';
import 'package:wallet/screen/WATopUPCardScreen.dart';
import 'package:wallet/screen/WATopUpReceiptScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      home: WATopUPCardScreen(),
    );
  }
}
