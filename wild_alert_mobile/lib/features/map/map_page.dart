import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wild_alert_mobile/common/widgets/application_widgets.dart';
import 'package:wild_alert_mobile/features/map/bloc/map_blocs.dart';
import 'package:wild_alert_mobile/features/map/bloc/map_state.dart';
import 'package:wild_alert_mobile/features/map/map_page_widgets.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: logoAppBar(),
      body: BlocBuilder<MapBlocs, MapState>(
        builder: (context, state) {
          return SizedBox(
            width: 360.w,
            child: mainMap(context)
          );
        },
      ),
    );
  }
}
