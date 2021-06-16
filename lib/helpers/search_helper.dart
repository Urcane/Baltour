import 'package:wisata_balikpapan_apps/models/tourism_place.dart';

class SearchBarHelper {
  static List<TourismPlace> filter(String value, List<TourismPlace>tourismData) {
    return tourismData.where((TourismPlace element) {
      return element.name.toLowerCase().contains(value.toLowerCase());
    }).toList();
  }
}