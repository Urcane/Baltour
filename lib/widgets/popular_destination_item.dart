import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place.dart';
import 'package:wisata_balikpapan_apps/views/detail_pages/page.dart';

class PopularDestinationItem extends StatelessWidget {
  PopularDestinationItem({Key? key, required this.tourismPlace}) : super(key: key);

  final TourismPlace tourismPlace;

  @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(
          left: 28.0,
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
              child: Container(
                width: 200.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                          tourismPlace.assetsImage,
                          fit: BoxFit.fitHeight,
                        ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(top: 16.0),
                              child: Text(
                                tourismPlace.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500
                                ), 
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                tourismPlace.ticketPrice,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400
                                ), 
                              ),
                            ),
                          ],
                        ),
                      )
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    
                    colors: [
                      Color(0xFF6164ff),
                      Color(0xFF6e7fff)
                    ]
                  )
                ),
              ),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
        ),
      );
    }
}