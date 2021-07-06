import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

// ignore: use_key_in_widget_constructors
class DriverRate extends StatefulWidget {
  @override
  _DriverRateState createState() => _DriverRateState();
}

class _DriverRateState extends State<DriverRate> {
  static const LatLng _kMapCenter = LatLng(30.045072, 31.196334);

  static const CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

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
          content: Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/star.png',height: 2,)
                ],
              ),
            ],
          ),
          buttons: [
            DialogButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "OK",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),
              ),
              color: Colors.black,
            )
          ],
        ).show();
      }),
    );
  }
}
