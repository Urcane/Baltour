import 'package:flutter/material.dart';
import 'package:wisata_balikpapan_apps/constants/color.dart';
import 'package:wisata_balikpapan_apps/helpers/search_helper.dart';
import 'package:wisata_balikpapan_apps/models/tourism_place.dart';
import 'package:wisata_balikpapan_apps/widgets/destination_item.dart';
import 'package:wisata_balikpapan_apps/widgets/urcane_text_field.dart';

class DestinationListStatefulWidget extends StatefulWidget {
  DestinationListStatefulWidget({
    required this.tourismPlace,
    required this.gridCount
  });
  
  final List<TourismPlace> tourismPlace;
  final int gridCount;

  @override
  _DestinationListState createState() => _DestinationListState(tourismPlace: tourismPlace, gridCount: gridCount);
}

class _DestinationListState extends State<StatefulWidget> {
  final List<TourismPlace> tourismPlace;
  final int gridCount;
  late List<TourismPlace> tourismPlaceMuttable;
  late String inputValue;

  _DestinationListState({
    required this.tourismPlace,
    required this.gridCount,
  }) {
    this.tourismPlaceMuttable = tourismPlace;
  }

  void performFilter(String value) {
    setState(() {
      value.length >= 1 ? tourismPlaceMuttable = SearchBarHelper.filter(value, tourismPlace) : tourismPlaceMuttable = tourismPlace;
    });
  }

  @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(
          right: 28.0,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 16.0,
                left: 28.0,
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  primaryColor: blueColorTheme
                ),
                child: UrcaneTextField(
                  onChange: (String value) {
                    setState(() {
                      inputValue = value;  
                    });
                  },
                  onSubmitted: performFilter,
                  onIconButtonClick: () => performFilter(inputValue),
                )
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.only(
                top: 28.0,
                bottom: 28.0
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: gridCount,
                mainAxisExtent: 225,
                mainAxisSpacing: 16.0,
              ),
              itemBuilder: (context, index) {
                return Container(
                  child: DestinationItem(tourismPlace: tourismPlaceMuttable[index])
                );
              },
              itemCount: tourismPlaceMuttable.length,
            ),
          ]
        ),
      );
    }
}