import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Admin_Payment.dart';
import 'Admin_home_user.dart';
import 'Admin_notification.dart';






class vachicle_nav extends StatefulWidget {
  vachicle_nav({Key? key}) : super(key: key);

  @override
  _vachicle_navState createState() => _vachicle_navState();
}

class _vachicle_navState extends State<vachicle_nav> {
  int _selectedIndex = 0;

  static  List<dynamic> _widgetOptions = [
    Admin_home(),
    Admin_payment(),
    Admin_notification(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house_fill,color: Colors.black54,),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet,color: Colors.black54,),
                label: 'Fav Items',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_2_fill,color: Colors.black54,),
                label: 'Notification',
                backgroundColor: Colors.white),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}