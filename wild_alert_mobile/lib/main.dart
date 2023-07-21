import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wild_alert_mobile/features/map/bloc/map_blocs.dart';
import 'package:wild_alert_mobile/features/map/map_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapBlocs(),
      child: ScreenUtilInit(
        designSize: const  Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MapPage()
        ),
      )
    );
  }
}
