import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  dynamic pozicija;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
      pozicija = position;
    } catch (e) {
      print(e);
    }
  }
}
