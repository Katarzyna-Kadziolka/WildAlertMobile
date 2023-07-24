import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wild_alert_mobile/common/values/colors.dart';
import 'package:wild_alert_mobile/common/widgets/application_widgets.dart';
import 'package:wild_alert_mobile/features/alert/alert_page_widgets.dart';
import 'package:wild_alert_mobile/features/alert/bloc/alert_blocs.dart';
import 'package:wild_alert_mobile/features/alert/bloc/alert_events.dart';
import 'package:wild_alert_mobile/features/alert/bloc/alert_state.dart';

import '../../common/entities/Animal.dart';

class AlertPage extends StatefulWidget {
  const AlertPage({super.key});

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryBackground,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.primaryBackground,
          appBar: logoAppBar(),
          body: BlocBuilder<AlertBlocs, AlertState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    animalSelection(context),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
