import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../values/colors.dart';

Widget appText(String text) {
  return Text(
    text,
    style: TextStyle(
        color: Colors.black, fontSize: 16.sp, fontWeight: FontWeight.normal),
  );
}

Widget alertButton(Function() func ) {
  return GestureDetector(
    onTap: func,
    child: Container(
      margin: EdgeInsets.only(bottom: 20.h),
      width: 200.w,
      height: 50.h,
      decoration: BoxDecoration(
          color: AppColors.primaryElement,
          borderRadius: BorderRadius.all(Radius.circular(15.w)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1))
          ]),
      child: Center(
          child: appText("ZGŁOŚ")
      ),
    ),
  );
}