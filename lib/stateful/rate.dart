// @dart=2.9
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shahen/colors.dart';
import 'package:sizer/sizer.dart';

// ignore: use_key_in_widget_constructors
class DriverRate extends StatefulWidget {
  @override
  _DriverRateState createState() => _DriverRateState();
}

class _DriverRateState extends State<DriverRate> {
  static const LatLng _kMapCenter = LatLng(30.045072, 31.196334);

  static const CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 19.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const GoogleMap(
        initialCameraPosition: _kInitialPosition,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Alert(
          context: context,
          title: 'قيم السائق',
          style: AlertStyle(
            alertPadding: const EdgeInsets.all(20),
            titleStyle: const TextStyle(
              fontSize: 30,
              color: AppColor.black
            ),
            overlayColor: Colors.white.withOpacity(0.0),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/star.png',
                    width: 10.w,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    'assets/star.png',
                    width: 10.w,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    'assets/star.png',
                    width: 10.w,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    'assets/star.png',
                    width: 10.w,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    'assets/star.png',
                    width: 10.w,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 16.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: AppColor.gray,
                    ),
                    bottom: BorderSide(
                      color: AppColor.gray,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        'assets/person.png',
                        fit: BoxFit.fill,
                        height: 12.h,
                        width: 12.h,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'driver name',
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Truck Type',
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'ا ح ف 564',
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              width: 65.w,
              radius: const BorderRadius.all(Radius.circular(30)),
              onPressed: () {},
              child: const Text(
                "إنهاء",
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 25,
                ),
              ),
              color: AppColor.orange,
            )
          ],
        ).show();
      }),
    );
  }
}
