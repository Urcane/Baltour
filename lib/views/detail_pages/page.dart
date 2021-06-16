import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place.dart';
import 'package:wisata_balikpapan_apps/widgets/detailpage_body.dart';

class DetailPage extends StatelessWidget {
  DetailPage({
    required this.tourismPlace
  });

  final TourismPlace tourismPlace;

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(tourismPlace.name),
          elevation: 0.0,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth <= 600) {
              return Container(
                child: DetailPageBody(tourismPlace: tourismPlace)
              );
            } else if (constraints.maxWidth <= 1200){
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 100),
                child: DetailPageBody(tourismPlace: tourismPlace),
              );
            } else {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 300),
                child: DetailPageBody(tourismPlace: tourismPlace),
              );
            }
          }
        )
      );
    }
}