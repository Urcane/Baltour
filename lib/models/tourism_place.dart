import 'package:wisata_balikpapan_apps/models/location_map.dart';

class TourismPlace {
  String name;
  String description;
  String location;
  LocationMap locationMaps;
  String openDays;
  String openTime;
  String ticketPrice;
  String assetsImage;
  bool isPopular;

  TourismPlace({
    required this.name,
    required this.description,
    required this.location,
    required this.locationMaps,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.assetsImage,
    required this.isPopular,
  });
}