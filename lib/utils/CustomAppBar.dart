import 'package:flutter/material.dart';

import 'Constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String name;
  final VoidCallback onChanged;
  const CustomAppBar({super.key, required this.name, required this.onChanged});
  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: appBarColor,
      actionsPadding: EdgeInsets.all(16),
      centerTitle: true,
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      leading: IconButton(onPressed: onChanged, icon: Icon(Icons.arrow_back_ios_new_sharp)),
      actions: [
        Stack(
          children: [
            Icon(
              Icons.notifications_none,
              color: Colors.white,
              size: 25,
            ),
            Positioned(
              right: -2,
              top: 1,
              left: 5,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "12",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}