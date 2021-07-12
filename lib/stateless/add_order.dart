import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:easy_localization/easy_localization.dart';

class AddOrder extends StatefulWidget {
  const AddOrder({required Key key}) : super(key: key);

  @override
  State<AddOrder> createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Color.fromRGBO(251, 152, 0, 1)),
                onPressed: (){},
              ),
              elevation: 0.0,
              backgroundColor: Colors.white,
              centerTitle: true,
              title: const Text("إضافة طلب",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.0,
                  fontFamily:'CareemBold',
                ),),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 1.7.h,),
                  Center(
                    child:  Container(
                        width: 28.6.w,
                        height: 9.8.h,
                        child: GestureDetector(
                            onTap: (){},
                            child: Image.asset('assets/image.jpg'))),
                  ),
                  SizedBox(height: .4.h,),
                  const Center(
                    child: Text("إضافة صورة",
                      style: TextStyle(
                        color: Color.fromRGBO(128, 114, 114, 1),
                        fontSize: 16,
                        fontFamily: 'CareemRegular',
                      ),),
                  ),
                  SizedBox(height: 2.5.h,),
                  Row(
                    children: [
                      SizedBox(width: 66.2.w,),
                      const Text("نوع التحويل",
                        style: TextStyle(
                          color: Color.fromRGBO(251, 152, 0, 1),
                          fontSize: 20.0,
                          fontFamily: 'CareemRegular',
                        ),),
                    ],
                  ),
                  SizedBox(height: 1.1.h,),
                  textField(),
                  SizedBox(height: 1.1.h,),
                  Row(
                    children: [
                      SizedBox(width: 68.4.w,),
                      const Text("رقم الجوال",
                        style: TextStyle(
                          color: Color.fromRGBO(251, 152, 0, 1),
                          fontSize: 20.0,
                          fontFamily: 'CareemRegular',
                        ),),
                    ],
                  ),
                  SizedBox(height: 1.h,),
                  textField(),
                  SizedBox(height: 1.1.h,),
                  Row(
                    children: [
                      SizedBox(width: 64.5.w,),
                      const Text("نوع الحمولة",
                        style: TextStyle(
                            color: Color.fromRGBO(251, 152, 0, 1),
                            fontSize: 20.0,
                            fontFamily: 'CareemRegular'
                        ),),
                    ],
                  ),
                  SizedBox(height: 1.1.h,),
                  textField(),
                  SizedBox(height: 1.3.h,),
                  Row(
                    children: [
                      SizedBox(width: 64.6.w,),
                      const Text("وزن الحمولة",
                        style: TextStyle(
                            color: Color.fromRGBO(251, 152, 0, 1),
                            fontSize: 20.0,
                            fontFamily: 'CareemRegular'
                        ),),
                    ],
                  ),
                  SizedBox(height: .8.h,),
                  textField(),
                  SizedBox(height: 2.6.h,),
                  Row(
                    children: [
                      SizedBox(width: 41.w,),
                      const Text("الى",
                        style: TextStyle(
                          color: Color.fromRGBO(251, 152, 0, 1),
                          fontSize: 20.0,
                          fontFamily: 'CareemRegular',
                        ),),
                      SizedBox(width: 2.w,),
                      const Icon(
                        Icons.location_on,
                        color: Color.fromRGBO(251, 152, 0, 1),
                      ),
                      SizedBox(width: 18.8.w,),
                      const Text("من",
                        style: TextStyle(
                          color: Color.fromRGBO(251, 152, 0, 1),
                          fontSize: 20.0,
                          fontFamily: 'CareemRegular',
                        ),),
                      SizedBox(width: 2.08.w,),
                      const Icon(
                        Icons.location_on,
                        color: Color.fromRGBO(251, 152, 0, 1),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.1.h,),
                  Row(
                    children: [
                      SizedBox(width: 25.8.w,),
                      Container(
                        width: 30.4.w,
                        height: 5.4.h,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(251, 152, 0, 0.26),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(20.0),
                          ),
                        ),
                      ),
                      SizedBox(width: 3.4.w),
                      Container(
                        width: 30.4.w,
                        height: 5.4.h,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(251, 152, 0, 0.26),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.5.h),
                  Row(children: [
                    SizedBox(width: 25.3.w,),
                    Container(
                      color: const Color.fromRGBO(251, 152, 0, 1),
                      width: 36.3.w,
                      height: 4.5.h,
                      child: TextFormField(
                        enabled: false,
                        cursorColor: Colors.black,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20.0),
                        ),
                      ),
                    ),
                    SizedBox(width: 7.3.w,),
                    const Text("المسافة",
                      style: TextStyle(
                        color: Color.fromRGBO(251, 152, 0, 1),
                        fontSize: 20.0,
                        fontFamily: 'CareemRegular',
                      ),),
                  ],),
                  SizedBox(height: 4.h,),
                  Container(
                    width: 70.1.w,
                    height: 5.1.h,
                    child: RaisedButton(
                        child: const Text('استمرار',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'CareemBold',
                          ),),
                        color: const Color.fromRGBO(251, 152, 0, 1),
                        onPressed: (){}),
                  ),
                  SizedBox(height: 2.6.h,),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}


Widget textField(){
  return Center(
    child: Container(
      width: 87.3.w,
      height: 5.4.h,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(251, 152, 0, 0.26),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        style: const TextStyle(
          fontSize: 20.0,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20.0),
        ),
      ),
    ),
  );
}
