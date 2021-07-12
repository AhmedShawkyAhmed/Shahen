// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "driver_name": "أسم السائق",
  "type": "نوع الشاحنة",
  "car": "نقل",
  "order_status": "حالة الطلب",
  "wait": "إنتظار",
  "fridge": "عربة ثلاجة",
  "name": "إسم السائق",
  "car_num": "رقم العربة",
  "distance": "المسافة",
  "location": "الموقع",
  "cost": "التكلفة"
};
static const Map<String,dynamic> en = {
  "driver_name": "Driver Name",
  "type": "Type",
  "car": "Transport",
  "order_status": "Order Type",
  "wait": "wait",
  "fridge": "Fridge",
  "name": "Driver Name",
  "car_num": "Car Number",
  "distance": "Distance",
  "location": "Location",
  "cost": "Cost"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
