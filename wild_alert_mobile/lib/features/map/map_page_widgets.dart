import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wild_alert_mobile/common/routes/names.dart';

import '../../common/controllers/map_controller.dart';
import '../../common/widgets/application_widgets.dart';

Widget mainMap(BuildContext context) {
  final MapController mapController = MapController();
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      GoogleMap(
        onMapCreated: mapController.onMapCreated,
        initialCameraPosition: CameraPosition(
          target: mapController.center,
          zoom: 11.0,
        ),
      ),
      alertButton(() => Navigator.of(context).pushNamed(AppRoutes.ALERT))
    ],
  );
}