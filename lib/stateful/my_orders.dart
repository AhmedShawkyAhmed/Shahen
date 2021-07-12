import 'package:flutter/material.dart';
import 'package:untitled/app_localization.dart';
import 'package:untitled/color.dart';
import 'package:untitled/stateless/my_orders_item.dart';

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
        backgroundColor: AppColors.white,
        selectedItemColor: AppColors.orange,
        selectedIconTheme: AppColors.orangeIcon,
        unselectedIconTheme: AppColors.lightGrayIcon,
        unselectedItemColor: AppColors.lightGray,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon:  Image.asset('assets/images/frontal-truck.png'),
            label: '${lang!.translate('main')}',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/images/order.png'),
            label: '${lang.translate('my_orders')}',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/images/notification.png'),
              label: '${lang.translate('notifications')}',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/images/male.png'),
            label: '${lang.translate('account')}',
          ),
          BottomNavigationBarItem(
            icon:  Image.asset('assets/images/settings.png'),
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
