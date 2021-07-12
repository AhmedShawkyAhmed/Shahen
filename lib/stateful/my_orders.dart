import 'package:flutter/material.dart';
import 'package:shahen/stateless/applocalization.dart';
import 'package:shahen/colors.dart';
import 'package:shahen/stateless/my_orders_item.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}


class _MyOrdersState extends State<MyOrders> {

  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
    @override
  Widget build(BuildContext context) {
 var lang= AppLocalization.of(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: AppColor.white,
        selectedItemColor: AppColor.orange,
        selectedIconTheme: AppColor.orangeIcon,
        unselectedIconTheme: AppColor.lightGrayIcon,
        unselectedItemColor: AppColor.lightGray,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon:  Image.asset('assets/frontal-truck.png'),
            label: '${lang!.translate('main')}',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/order.png'),
            label: '${lang.translate('my_orders')}',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/notification.png'),
              label: '${lang.translate('notifications')}',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/male.png'),
            label: '${lang.translate('account')}',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/settings.png'),
            label: '${lang.translate('settings')}',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('${lang.translate('my_orders')}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index){
                    return MyOrdersItem();
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
