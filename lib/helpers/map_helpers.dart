import 'package:url_launcher/url_launcher.dart';

class MapHelper {
  static Future<void> init(double lat, double long) async {
    final String googleUrl = "https://www.google.com/maps/search/?api=1&query=$lat,$long";
    final String appleUrl = 'https://maps.apple.com/?sll=$lat,$long';

    if (await canLaunch(googleUrl)) {
      print("Launching Google Maps...");
      await launch(googleUrl);
    } else if (await canLaunch(appleUrl)) {
      print("Launching Apple Maps...");
      await launch(appleUrl);
    } else {
      print("Not Launching URL");
      throw "Couldn't Launch URL";
    }
  }
}