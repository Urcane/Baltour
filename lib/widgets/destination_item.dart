import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/constants/color.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place.dart';
import 'package:wisata_balikpapan_apps/views/detail_pages/page.dart';

class DestinationItem extends StatelessWidget {
  DestinationItem({
    Key? key, 
    required this.tourismPlace
  }) : super(key: key);

  final TourismPlace tourismPlace;

  @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(
          left: 28.0
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailPage(tourismPlace: tourismPlace,);
                }
              )
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Container(
              width: 125.0,
              decoration: BoxDecoration(
                color: blueWhiteColorTheme,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: Image.asset(
                      tourismPlace.assetsImage,
                      fit: BoxFit.fitHeight,
                    )
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 100.0,
                            margin: const EdgeInsets.only(
                              top: 16.0
                            ),
                            child: Text(
                              this.tourismPlace.name,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          Container(
                            width: 100.0,
                            margin: const EdgeInsets.only(
                              top: 8.0
                            ),
                            child: Text(
                              this.tourismPlace.location,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
}