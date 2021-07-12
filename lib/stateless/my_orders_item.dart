import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/app_localization.dart';
import 'package:untitled/color.dart';

class MyOrdersItem extends StatelessWidget {
  const MyOrdersItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang= AppLocalization.of(context);

    return Padding(
        padding: const EdgeInsets.only(right: 34.0,left: 34.0,top: 32.0),
        child: Flexible(
          child: Card(
            elevation: 5,
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              ),
child:Column (
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text('${lang!.translate('order_number')}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
          ),
          SizedBox(height:19.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: AppColors.orange,
                    width: 1.0,
                    style: BorderStyle.solid)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image(image:AssetImage('assets/images/gps-fixed-indicator.png')),
                        ),
                        SizedBox(
                          width:4.0,
                        ),
                        Text('${lang.translate('from')}',style: TextStyle(fontSize: 14),),
                    ],),
                  Text('${lang.translate('cairo')}',style: TextStyle(fontSize: 14),),
                    Text('${lang.translate('yesterday')}',style: TextStyle(fontSize: 14),),
                  ],
                ),
              ),

            ),
          ),
          SizedBox(
            height:10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: AppColors.orange,
                    width: 1.0,
                    style: BorderStyle.solid)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:14.0),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image(image:AssetImage('assets/images/placeholder.png')),
                        ),
                        SizedBox(
                          width:4.0,
                        ),
                    Text('${lang.translate('to')}',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Expanded(child: Center(child: Text('${lang.translate('ismailia')}',style: TextStyle(fontSize: 14),))),
                  ],
                ),
              ),

            ),
          ),
      SizedBox(
          height:10.0,
      ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: AppColors.orange,
                    width: 1.0,
                    style: BorderStyle.solid)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:14.0),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image(image:AssetImage('assets/images/clock-circular-outline.png')),
                        ),
                        SizedBox(
                          width:4.0,
                        ),
                    Text('${lang.translate('time')}',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Expanded(child: Center(child: Text('${lang.translate('two_hours')}',style: TextStyle(fontSize: 14),))),
                  ],
                ),
              ),

            ),
          ),
    SizedBox(
      height:10.0,
    ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: AppColors.orange,
                    width: 1.0,
                    style: BorderStyle.solid)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:14.0),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image(image:AssetImage('assets/images/delivery-truck.png')),
                        ),
                        SizedBox(
                          width:4.0,
                        ),
                    Text('${lang.translate('truck')}',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Expanded(child: Center(child: Text('${lang.translate('food_delivery')}',style: TextStyle(fontSize: 14),))),
                  ],
                ),
              ),

            ),
          ),
    SizedBox(
      height:10.0,
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: AppColors.orange,
                width: 1.0,
                style: BorderStyle.solid)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Image(image:AssetImage('assets/images/money-bag.png')),
                  ),
                  SizedBox(
                    width:4.0,
                  ),
              Text('${lang.translate('order_cost')}',style: TextStyle(fontSize: 14),),
                ],
              ),
              Center(child: Text('${lang.translate('price')}',style: TextStyle(fontSize: 14),)),
              Text('${lang.translate('waiting')}',style: TextStyle(fontSize: 14,color: AppColors.orange),),
            ],
          ),
        ),
      ),
    ),
    SizedBox(
      height:33.0,
    ),
  ],
)

          ),
        ),
      );
  }
}
