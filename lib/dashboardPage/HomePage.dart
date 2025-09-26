import 'package:autodeliveryapp1/dashboardPage/DashboardPage.dart';
import 'package:autodeliveryapp1/deliveryPage/order/OrderPage.dart';
import 'package:autodeliveryapp1/prioritySetting/PrioritySetting.dart';
import 'package:autodeliveryapp1/profile/Profile.dart';
import 'package:autodeliveryapp1/setting/Settings.dart';
import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
            icon: Icon(Icons.local_shipping_outlined),
            label: "Delivery",
          ),
          NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),

          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      body: <Widget>[
        DashboardPage(),
        OrderPage(),
        //OrderHistoryPage(),
        Settings(),
        //PrioritySetting(),
        Profile(),
      ][_currentIndex],
    );
  }
}
