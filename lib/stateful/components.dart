import 'package:flutter/material.dart';
import 'package:sha7n_tech/colors.dart';
import 'package:sizer/sizer.dart';

Widget tffItem({
  required String title,
  TextInputType? keyboard,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title",
          style: tffTitleStyle(),
        ),
        SizedBox(height: 1.2.h,),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: AppColor.orange.withOpacity(0.26),
          ),
          child: TextFormField(
            keyboardType: keyboard,
            
            decoration: InputDecoration(
                
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: AppColor.orange.withOpacity(0.26)),
                    ),    
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: AppColor.orange.withOpacity(0.26)),
                    ),    
                    ),
          ),
        ),
        
      ],
    );

TextStyle tffTitleStyle() {
  return TextStyle(
    fontFamily: "Careem",
    fontWeight: FontWeight.normal,
    fontSize: 20,
    color: AppColor.orange.withOpacity(1),
    letterSpacing: 0,
  );
}

TextStyle tffInputStyle() {
  return TextStyle(
    fontFamily: "Careem",
    fontWeight: FontWeight.normal,
    fontSize: 20,
    color: AppColor.black
  );
}