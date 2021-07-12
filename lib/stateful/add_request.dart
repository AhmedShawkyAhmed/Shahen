import 'package:flutter/material.dart';
import 'package:shahen/colors.dart';
import 'package:shahen/stateful/components.dart';
import 'package:shahen/stateless/applocalization.dart';
import 'package:sizer/sizer.dart';

class addRequest extends StatefulWidget {
  @override
  _addRequestState createState() => _addRequestState();
}

class _addRequestState extends State<addRequest> {
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.orange,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(
          AppLocalization.of(context)!.translate('add_request').toString(),
          style: const TextStyle(
              fontFamily: "Careem",
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: AppColor.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 0.6.h,
              ),
              //text field
              SizedBox(
                height: 4.67.h,
              ),
              Container(
                height: 226,
                //width: 313,
                child: Material(
                  elevation: 6,
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: AppColor.lightGray,
                  child: TextField(
                    maxLines: 24,
                    
                    decoration: InputDecoration(
                      hintText: AppLocalization.of(context)!
                          .translate("describe_positive")
                          .toString(),
                      hintStyle: TextStyle(
                        fontFamily: "Careem",
                        fontSize: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.white),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.2.h,
              ),
              tffItem(
                  title: AppLocalization.of(context)!
                      .translate("receiver_name")
                      .toString()),
              //checkbox
              Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: checkBox,
                      activeColor: AppColor.orange,
                      checkColor: AppColor.orange,
                      // checkColor: Colors.orange.shade200,
                      onChanged: (value) {
                        setState(() {
                          checkBox = value!;
                        });
                      }),
                  Text(
                    AppLocalization.of(context)!
                        .translate("receiver")
                        .toString(),
                    style: TextStyle(
                      fontFamily: "Careem",
                      fontSize: 15,
                      color: AppColor.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.67.h,
              ),
              tffItem(
                  title: AppLocalization.of(context)!
                      .translate("receiver_phone")
                      .toString(),
                  keyboard: TextInputType.number),
              SizedBox(
                height: 0.49.h,
              ),
              tffItem(
                  title: AppLocalization.of(context)!
                      .translate("request_cost")
                      .toString(),
                  keyboard: TextInputType.number),
              SizedBox(
                height: 3.07.h,
              ),
              //continue button
              Container(
                width: 263,
                height: 50,
                margin: EdgeInsetsDirectional.only(
                  bottom: 20 
                ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  onPressed: () {},
                  color: AppColor.orange.withOpacity(1),
                  textColor: AppColor.white,
                  child: Text(
                    AppLocalization.of(context)!
                        .translate("continue")
                        .toString(),
                    style: TextStyle(
                        fontFamily: "Careem",
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
