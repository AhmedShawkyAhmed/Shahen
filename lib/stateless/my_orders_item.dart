import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shahen/stateless/applocalization.dart';
import 'package:shahen/colors.dart';

class MyOrdersItem extends StatelessWidget {
  const MyOrdersItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lang = AppLocalization.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 34.0, left: 34.0, top: 32.0),
      child: Flexible(
        child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    '${lang!.translate('order_number')}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 19.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColor.orange,
                            width: 1.0,
                            style: BorderStyle.solid)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Image(
                                    image: AssetImage(
                                        'assets/gps-fixed-indicator.png')),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '${lang.translate('from')}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          Text(
                            '${lang.translate('cairo')}',
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            '${lang.translate('yesterday')}',
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColor.orange,
                            width: 1.0,
                            style: BorderStyle.solid)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Image(
                                    image: AssetImage(
                                        'assets/placeholder.png')),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '${lang.translate('to')}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          Expanded(
                              child: Center(
                                  child: Text(
                            '${lang.translate('ismailia')}',
                            style: const TextStyle(fontSize: 14),
                          ))),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColor.orange,
                            width: 1.0,
                            style: BorderStyle.solid)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Image(
                                    image: AssetImage(
                                        'assets/clock-circular-outline.png')),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '${lang.translate('time')}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          Expanded(
                              child: Center(
                                  child: Text(
                            '${lang.translate('two_hours')}',
                            style: const TextStyle(fontSize: 14),
                          ))),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColor.orange,
                            width: 1.0,
                            style: BorderStyle.solid)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Image(
                                    image: AssetImage(
                                        'assets/delivery-truck.png')),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '${lang.translate('truck')}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          Expanded(
                              child: Center(
                                  child: Text(
                            '${lang.translate('food_delivery')}',
                            style: const TextStyle(fontSize: 14),
                          ))),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColor.orange,
                            width: 1.0,
                            style: BorderStyle.solid)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Image(
                                    image: AssetImage(
                                        'assets/money-bag.png')),
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '${lang.translate('order_cost')}',
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          Center(
                              child: Text(
                            '${lang.translate('price')}',
                            style: const TextStyle(fontSize: 14),
                          )),
                          Text(
                            '${lang.translate('waiting')}',
                            style: const TextStyle(
                                fontSize: 14, color: AppColor.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 33.0,
                ),
              ],
            )),
      ),
    );
  }
}
