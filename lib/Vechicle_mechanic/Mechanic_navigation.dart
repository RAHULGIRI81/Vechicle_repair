import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_repair/Vechicle_mechanic/Mechanic_rating.dart';
import 'package:vehicle_repair/Vechicle_mechanic/Mechanic_service.dart';
import 'package:vehicle_repair/Vechicle_mechanic/Mechanic_service_and_request.dart';


class Mechanic_navigation extends StatefulWidget {
  Mechanic_navigation({Key? key}) : super(key: key);

  @override
  _Mechanic_navigationState createState() => _Mechanic_navigationState();
}

class _Mechanic_navigationState extends State<Mechanic_navigation> {
  int _selectedIndex = 0;

  static List<dynamic> _widgetOptions = [
    Mechanic_service_and_request(),
    Mechanic_service(),
    Mechanic_rating(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_search,
                    size: 30,
                  ),
                  label: 'Request',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.miscellaneous_services,
                    size: 30,
                  ),
                  label: 'Service',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.star_fill,
                    size: 32,
                  ),
                  label: 'Rating',
                  backgroundColor: Colors.white),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(color: Colors.blue),
            iconSize: 40,
            onTap: _onItemTapped,
            elevation: 5),
      ),
    );
  }
}
