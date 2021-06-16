import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/widgets/homepage_app_bar.dart';
import 'package:wisata_balikpapan_apps/widgets/homepage_body.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({
    required this.title
  });

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: HomePageAppBar(),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return Container(
                child: HomePageBody()
              );
            } else if (constraints.maxWidth <= 1200){
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: HomePageBody(),
              );
            } else {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 300),
                child: HomePageBody(),
              );
            }
          }
        ),
      );
    }
}