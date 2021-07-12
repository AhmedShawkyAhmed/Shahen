import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shahen/app_localization.dart';
import 'package:shahen/stateful/my_orders.dart';


void main()  {
runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override


  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness:Brightness.dark,statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Careem',
        scaffoldBackgroundColor: Colors.white,
      ),
supportedLocales: const [
  Locale('ar'),
  Locale('en'),
],
localizationsDelegates: [
  AppLocalization.delegate,
GlobalMaterialLocalizations.delegate,
GlobalWidgetsLocalizations.delegate,
],
      localeResolutionCallback: (locale,supportedLocales){
        for( var supportedLocale in supportedLocales){
          if(supportedLocale.languageCode == locale!.languageCode &&
              supportedLocale.countryCode == locale.countryCode
          ){
            return supportedLocale;
          }
          return supportedLocales.first;
        }
      },
      home: const MyOrders(),
    );
  }
  }

