import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place_list.dart';
import 'package:wisata_balikpapan_apps/widgets/destination_lists.dart';
import 'package:wisata_balikpapan_apps/widgets/popular_destination_item.dart';

class PopularDestination extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              right: 28.0,
              left: 28.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Popular Destination 🔥",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500
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
                  child: const Text('See All'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return DestinationList(tourismPlace: _getPopularDestination(), title: 'Popular Destination',);
                        }
                      )
                    );
                  }, 
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 10.0
            ),
            height: 300, // Tinggi Container
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    TourismPlace data = _getPopularDestination()[index];

                    return PopularDestinationItem(tourismPlace: data,);
                  },
                  itemCount: _getPopularDestinationLength(),
                ),
               SizedBox(width: 28.0,) 
              ]
            ),
          ),
        ],
      );
    }

  List<TourismPlace> _getPopularDestination() {
    List<TourismPlace> data = tourismPlaceList;
    var result = <TourismPlace>[];

    for (TourismPlace tourismPlace in data) {
      if (tourismPlace.isPopular) {
        result.add(tourismPlace);
      }      
    }
    return result;
  }

  int _getPopularDestinationLength() {
    if (_getPopularDestination().length <= 3)
      return _getPopularDestination().length;
    return 3;
  }
}