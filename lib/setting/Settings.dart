import 'package:autodeliveryapp1/dashboardPage/HomePage.dart';
import 'package:autodeliveryapp1/utils/Constants.dart';
import 'package:autodeliveryapp1/utils/CustomAppBar.dart';
import 'package:flutter/material.dart';

import '../prioritySetting/PrioritySetting.dart';

class Settings extends StatelessWidget{
  const Settings({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(name: "Settings", onChanged: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
      }),

      body: SafeArea(child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          _settingsTile(title: "Language", subTitle: "বাংলা / English", onTap: (){}),
          _settingsTile(title: "Theme", subTitle: "Light", onTap: (){}),
          _settingsTile(title: "Default Active App", subTitle: "Foodpanda", onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => PrioritySetting()));
          }),
          _settingsTile(title: "Notification", subTitle: "Sound & Vibration", onTap: (){}),
          _settingsTile(title: "About", subTitle: "Version 1.0.0", onTap: (){}),
        ],
      )),
    );
  }
  Widget _settingsTile({required String title, required String subTitle, required VoidCallback onTap}){
    return Container(
      margin: EdgeInsets.only(bottom: 12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),child: ListTile(
      title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      subtitle: Text(subTitle, style: TextStyle(color: Colors.grey, fontSize: 14)),
      trailing: Icon(Icons.chevron_right, color: Colors.grey),
      onTap: onTap,
    ),
    );
  }
}