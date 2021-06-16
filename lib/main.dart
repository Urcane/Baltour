import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wisata_balikpapan_apps/constants/color.dart';
import 'package:wisata_balikpapan_apps/views/main_pages/page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // statusBarColor setter
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )
    );

    return MaterialApp(
      title: 'Wisata Balikpapan',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: greyWhite,
      ),
      home: HomePage(title: 'Wisata Balikpapan',),
    );
  }
}
