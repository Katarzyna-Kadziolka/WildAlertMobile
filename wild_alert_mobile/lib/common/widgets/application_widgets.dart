import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/colors.dart';

Widget appText(String text, Color color) {
  return Text(
    text,
    style: TextStyle(
        color: color, fontSize: 16.sp, fontWeight: FontWeight.normal),
  );
}

Widget alertButton(Function() func ) {
  return GestureDetector(
    onTap: func,
    child: Container(
      margin: EdgeInsets.only(bottom: 10.h),
      width: 50.w,
      height: 50.h,
      decoration: BoxDecoration(
          color: AppColors.secondaryElement,
          borderRadius: BorderRadius.all(Radius.circular(12.w)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1))
          ]),
      child: Center(
          child: appText("+", AppColors.secondaryText)
      ),
    ),
  );
}

Widget mainButton(Function() func) {
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
          child: appText("ZGŁOŚ", AppColors.primaryText)
      ),
    ),
  );
}

AppBar logoAppBar() {
  return AppBar(
    title: Text("Dodaj zgłoszenie", style: TextStyle(
        color: AppColors.primaryText, fontSize: 22.sp, fontWeight: FontWeight.normal),),
  );
}

Widget buildTextField(){
  return Container(
    width: 250.w,
    height: 50.h,
    decoration: BoxDecoration(
      color: AppColors.primarySecondaryBackground,
      borderRadius: BorderRadius.all(Radius.circular(15.w)),
      border: Border.all(color: AppColors.primaryText)
    ),
    child: Row(
      children: [
        Container(
          width: 16.w,
          height: 16.w,
          margin: EdgeInsets.only(left: 12.w),
          child: Image.asset('assets/logo.png'),
        ),
        Padding(
          padding: EdgeInsets.only(top:15.h),
          child: SizedBox(
            width: 175.w,
            height: 50.h,
            child: const TextField(
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  hintText: "Lokalizacja",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.transparent
                    ),
                  ),
                ),
            ),
          ),
        ),
        Container(
          width: 16.w,
          height: 16.w,
          margin: EdgeInsets.only(right: 12.w),
          child: Image.asset('assets/location.png'),
        ),
      ],
    )
  );
}