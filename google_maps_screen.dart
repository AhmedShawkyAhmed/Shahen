import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_internship/providers/application_bloc.dart';
import 'package:flutter_internship/stateless/loading_widget_botto_sheet.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class GoogleMapsScreen extends StatefulWidget {
  const GoogleMapsScreen({Key? key}) : super(key: key);

  @override
  _GoogleMapsScreenState createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
  Completer<GoogleMapController> _controller = Completer();
  CameraPosition _cairo = CameraPosition(
    target: LatLng(30.033333, 31.233334),
    zoom: 13.4746,
  );

  @override
  Widget build(BuildContext context) {
    final appBloc = Provider.of<ApplicationBloc>(context);

    return new Scaffold(
      body: (appBloc.currentLocation == null)
          ? Center(child: CircularProgressIndicator())
          : ListView(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Search Location",
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(appBloc.currentLocation!.latitude,
                          appBloc.currentLocation!.longitude),
                      zoom: 14,
                    ),
                    myLocationEnabled: true,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                  ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showBottomSheet(context);
        },
        label: Text('Show Bottom Sheet!'),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20),
            child: const LoadingWidget(),
          );
        });
  }
}
