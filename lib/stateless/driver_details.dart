import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shahen/translate/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class DriverDetails extends StatelessWidget {
  const DriverDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context);
    var width = MediaQuery.of(context);
    return Container(
        child: LayoutBuilder(
          builder: (context, constraint) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // textDirection: TextDirection.rtl,
                  children: [
                    Row(
                      // textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://banner2.cleanpng.com/20180718/shx/kisspng-client-portal-service-organization-advertising-man-mobile-with-hand-5b4f27f8391687.9090013715319142322339.jpg'),
                        ),
                        SizedBox(
                          width: constraint.maxWidth * 0.05,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(LocaleKeys.driver_name.tr(),
                                //'?????? ????????????',
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: constraint.maxHeight * 0.001,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                             // textDirection: TextDirection.rtl,
                              children: [
                                const Text(
                                  '4',
                                  style: TextStyle(fontSize: 10),
                                ),
                                SizedBox(
                                  width: constraint.maxWidth * 0.01,
                                ),
                                RatingBar.builder(
                                  initialRating: 4,
                                  itemSize: 8,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.circle,
                                    color: Colors.black,
                                  ), onRatingUpdate: (value) { print(value); },
                                ),

                              ],
                            ),
                            SizedBox(
                              height: constraint.maxHeight * 0.001,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                            //  textDirection: TextDirection.rtl,
                              children: [
                                Text(LocaleKeys.car.tr(),
                                  //  '??????'

                                    style: const TextStyle(
                                        fontSize: 12,)),
                                SizedBox(
                                  width: constraint.maxWidth * 0.01,
                                ),
                                Text(LocaleKeys.type.tr(),
                                    //'?????? ??????????????',
                                    style: const TextStyle(
                                      fontSize: 12,)),
                              ],
                            ),
                            SizedBox(
                              height: constraint.maxHeight * 0.001,
                            ),
                            const Text('?? ?? ?? 564',
                                style: TextStyle(
                                  fontSize: 12,)),

                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.phone,
                          color: Colors.green,
                          size: 40,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: constraint.maxHeight * 0.01,
                    ),
                    const Divider(thickness: 1.2,),
                    SizedBox(
                      height: constraint.maxHeight * 0.001,
                    ),
                    Row(
                    //  textDirection: TextDirection.rtl,
                      children: [
                        Text(LocaleKeys.order_status.tr(),
                            //'???????? ??????????',
                            style: const TextStyle(
                              fontSize: 15,)),
                        const Spacer(),
                        Column(
                          children: [
                            Text(LocaleKeys.wait.tr(),
                                //'????????????',
                                style: const TextStyle(
                                  fontSize: 12 ,color: Colors.amber,)),
                            Text(LocaleKeys.fridge.tr(),
                                //'???????? ??????????',
                                style: const TextStyle(
                                  decoration: TextDecoration.overline,decorationStyle: TextDecorationStyle.solid,
                                    fontSize: 12 ,)),
                          ],
                        ),

                      ],
                    ),

                    SizedBox(
                      height: constraint.maxHeight * 0.08,
                    ),
                    Row(
                   //   textDirection: TextDirection.rtl,
                      children: [
                        Text(LocaleKeys.driver_name.tr(),
                            //'?????? ????????????',
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 10 ,)),
                        SizedBox(
                          width: constraint.maxWidth * 0.03,
                        ),
                        Container(
                          height: constraint.maxHeight * 0.04,
                          width: constraint.maxWidth * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber
                          ),
                          child: const Center(child: Text('alsaid hamdy')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: constraint.maxHeight * 0.02,
                    ),
                    Row(
                    //  textDirection: TextDirection.rtl,
                      children: [
                        Text(LocaleKeys.car_num.tr(),
                            //'?????? ????????????',
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 10 ,)),
                        SizedBox(
                          width: constraint.maxWidth * 0.03,
                        ),
                        Container(
                          height: constraint.maxHeight * 0.04,
                          width: constraint.maxWidth * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber
                          ),
                          child: const Center(child: Text('998877665544')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: constraint.maxHeight * 0.02,
                    ),
                    Row(
                     // textDirection: TextDirection.rtl,
                      children: [
                        Text(LocaleKeys.distance.tr(),
                            //'??????????????',
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 10 ,)),
                        SizedBox(
                          width: constraint.maxWidth * 0.03,
                        ),
                        Container(
                          height: constraint.maxHeight * 0.04,
                          width: constraint.maxWidth * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber
                          ),
                          child: const Center(child: Text('220 KM')),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: constraint.maxHeight * 0.02,
                    ),
                    Row(
                    //  textDirection: TextDirection.rtl,
                      children: [
                        Text(LocaleKeys.location.tr(),
                            //'???????? ??????????',
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 10 ,)),
                        SizedBox(
                          width: constraint.maxWidth * 0.03,
                        ),
                        Container(
                          height: constraint.maxHeight * 0.04,
                          width: constraint.maxWidth * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber
                          ),
                          child: const Center(child: Text('NasrCity - Cairo - Egypt',style: TextStyle(fontSize: 10),)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: constraint.maxHeight * 0.02,
                    ),
                    Row(
                    //  textDirection: TextDirection.rtl,
                      children: [
                        Text(LocaleKeys.cost.tr(),
                            //'??????????????',
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 12 ,)),
                        SizedBox(
                          width: constraint.maxWidth * 0.03,
                        ),
                        Container(
                          height: constraint.maxHeight * 0.04,
                          width: constraint.maxWidth * 0.5,
                        //  padding: EdgeInsets.symmetric(horizontal: 40,vertical: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.amber
                          ),
                          child: const Center(child: Text('500 \$')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
