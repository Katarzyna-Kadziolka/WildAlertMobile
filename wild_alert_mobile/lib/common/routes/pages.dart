import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wild_alert_mobile/common/routes/names.dart';
import 'package:wild_alert_mobile/features/alert/alert_page.dart';
import 'package:wild_alert_mobile/features/alert/bloc/alert_blocs.dart';
import 'package:wild_alert_mobile/features/map/bloc/map_blocs.dart';

import '../../features/map/map_page.dart';

class AppPages {
  static List<PageEntity> GetPagesEntity() {
    return [
      PageEntity(
          route: AppRoutes.INITIAL,
          page: const MapPage(),
          bloc: BlocProvider (create: (_) => MapBlocs())
      ),
      PageEntity(
          route: AppRoutes.ALERT,
          page: const AlertPage(),
          bloc: BlocProvider (create: (_) => AlertBlocs())
      ),
    ];
  }

  static List<dynamic> allBlocProviders(BuildContext context) {
    List<dynamic> blocProviders = <dynamic>[];
    for(var pageEntity in GetPagesEntity()) {
      blocProviders.add(pageEntity.bloc);
    }
    return blocProviders;
  }

  static MaterialPageRoute generateRouteSettings(RouteSettings settings) {
    if(settings.name != null) {
      var result = GetPagesEntity().where((element) => element.route == settings.name);
      if(result.isNotEmpty) {
        return MaterialPageRoute(builder: (_)=> result.first.page, settings: settings);
      }
    }
    return MaterialPageRoute(builder: (_) => MapPage(), settings: settings);
  }
}

class PageEntity {
  String route;
  Widget page;
  dynamic bloc;

  PageEntity({ required this.route, required this.page, required this.bloc });
}