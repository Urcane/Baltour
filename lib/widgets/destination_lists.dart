import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place.dart';
import 'package:wisata_balikpapan_apps/widgets/state/destination_list_state.dart';

class DestinationList extends StatelessWidget {
  DestinationList({
    this.title,
    required this.tourismPlace,
  });
  
  final List<TourismPlace> tourismPlace;
  final String? title;

  @override
    Widget build(BuildContext context) {
      return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(title ?? 'Destinations'),
            centerTitle: true,
            // elevation: 0.0,
            elevation: 0.0,
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return DestinationListStatefulWidget(
                  tourismPlace: tourismPlace, 
                  gridCount: 2
                );
              } else if(constraints.maxWidth <= 800) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: DestinationListStatefulWidget(
                    tourismPlace: tourismPlace, 
                    gridCount: 3
                  ),
                );
              } else if(constraints.maxWidth <= 1200) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 150.0),
                  child: DestinationListStatefulWidget(
                    tourismPlace: tourismPlace, 
                    gridCount: 4
                  ),
                );
              } else if(constraints.maxWidth <= 1600) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 200.0),
                  child: DestinationListStatefulWidget(
                    tourismPlace: tourismPlace, 
                    gridCount: 6
                  ),
                );
              } else {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 300.0),
                  child: DestinationListStatefulWidget(
                    tourismPlace: tourismPlace, 
                    gridCount: 8
                  ),
                );
              }
            }
          )
        ),
      );
    }
}