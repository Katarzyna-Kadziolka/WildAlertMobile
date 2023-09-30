import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wild_alert_mobile/common/routes/names.dart';
import 'package:wild_alert_mobile/common/styles/colors.dart';

import '../../common/controllers/map_controller.dart';
import '../../common/widgets/application_widgets.dart';

Widget mainMap(BuildContext context) {
  final MapController mapController = MapController();
  return Stack(
    alignment: Alignment.bottomLeft,
    children: [
      GoogleMap(
        onMapCreated: mapController.onMapCreated,
        initialCameraPosition: CameraPosition(
          target: mapController.center,
          zoom: 11.0,
        ),
      ),
      Positioned(
        top: 630,
        left: 10,
        right: 350,
        child: alertButton(() => Navigator.of(context).pushNamed(AppRoutes.ALERT)),
      ),
      Positioned(
          child: Container(
            margin: EdgeInsets.only(top: 24.h),
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildTextField()
              ],
            ),
          )
      ),
    ],
  );
}