import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place_list.dart';
import 'package:wisata_balikpapan_apps/widgets/destination_item.dart';
import 'package:wisata_balikpapan_apps/widgets/destination_lists.dart';

class Destinations extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 16.0,
              left: 28.0,
              right: 28.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'All Destination 🏖️',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),  
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Color(0xFF6164ff),
                    textStyle: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500
                    )
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return DestinationList(tourismPlace: tourismPlaceList, title: 'All Destinations',);
                        }
                      )
                    );
                  },
                  child: Text('See All')
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 28.0
            ),
            height: 225,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    TourismPlace tourismPlace = tourismPlaceList[index];

                    return DestinationItem(tourismPlace: tourismPlace);
                  },
                  itemCount: tourismPlaceList.length <= 4 ? tourismPlaceList.length : 4,
                ),
                SizedBox(width: 28.0)
              ]
            ),
          ),
        ],
      );
    }
}