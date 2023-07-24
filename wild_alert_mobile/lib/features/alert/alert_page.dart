import 'package:flutter/material.dart';
import 'package:wild_alert_mobile/common/values/colors.dart';
import 'package:wild_alert_mobile/common/widgets/application_widgets.dart';

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
          body: SingleChildScrollView(
            child: Column(
              children: [Text("Hello")],
            ),
          ),
        ),
      ),
    );
  }
}
