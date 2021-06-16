
import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place_list.dart';
import 'package:wisata_balikpapan_apps/widgets/destination_lists.dart';
import 'package:wisata_balikpapan_apps/widgets/destinations.dart';
import 'package:wisata_balikpapan_apps/widgets/popular_destination.dart';
import 'package:wisata_balikpapan_apps/widgets/urcane_text_field.dart';

class HomePageBody extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return ListView(
        children: <Widget>[          
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 14.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DestinationList(tourismPlace: tourismPlaceList, title: "Search for Destination",);
                  }
                ));
              },
              child: UrcaneTextField(
                isEnabled: false,
              ),
            ),
          ),
          PopularDestination(),
          Destinations()
        ],
      );
    }
}