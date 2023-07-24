import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController {
  late GoogleMapController mapController;

  final LatLng center;

  MapController({double latitude = 52.2399198, double longitude = 21.0193942}) : center = LatLng(latitude, longitude);

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
}