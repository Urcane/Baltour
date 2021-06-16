import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/constants/color.dart';
import 'package:wisata_balikpapan_apps/helpers/map_helpers.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place.dart';

class DetailPageBody extends StatelessWidget {
  DetailPageBody({
    required this.tourismPlace
  });

  final TourismPlace tourismPlace;

  @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(
          left: 28.0,
          right: 28.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 28.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    tourismPlace.assetsImage,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 16.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ClipRRect(  
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                          left: 16.0,
                          right: 16.0
                        ),
                        decoration: BoxDecoration(
                          color: blueColorTheme
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.calendar_today, 
                              color: greyWhite,
                              size: 16.0,
                            ),
                            SizedBox(width: 4.0,),
                            Text(
                              tourismPlace.openDays, 
                              style: TextStyle(
                                color: greyWhite,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.access_time,
                              color: blueColorTheme,
                              size: 24.0,
                            ),
                            SizedBox(width: 4.0,),
                            Text(
                              tourismPlace.openTime, 
                              style: TextStyle(
                                color: blueColorTheme ,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      top: 16.0
                    ),
                    child: Text(
                      tourismPlace.name,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 8.0
                    ),
                    child: Text(
                      tourismPlace.description,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 24.0
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Ticket Price",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 8.0,
                          left: 16.0,
                          right: 16.0
                        ),
                        decoration: BoxDecoration(
                          color: blueColorTheme
                        ),
                        child: Text(
                          tourismPlace.ticketPrice,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: greyWhite
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 24.0
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Location",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 4.0
                      ),
                      child: Text(
                        tourismPlace.location,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              blueColorTheme
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)
                              )
                            )
                          ),
                          onPressed: () async {
                            await MapHelper.init(tourismPlace.locationMaps.latitude, tourismPlace.locationMaps.longitude);
                          }, 
                          child: Text(
                            'See Location on Maps',
                            style: TextStyle(
                              color: greyWhite  
                            ),
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 28.0,)
            ],
          ),
        ),
      );
    }
}