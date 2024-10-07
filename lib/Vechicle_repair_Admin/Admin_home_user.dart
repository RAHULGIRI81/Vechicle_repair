import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin_mechanic.dart';
import 'Admin_vechicle_login.dart';

class Admin_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(automaticallyImplyLeading: false,
          toolbarHeight: 95,
          backgroundColor: Colors.blue[100],
          title: CircleAvatar(
            backgroundImage: AssetImage("ASSETS/person.jpeg"),
            radius: 25,
          ),
          bottom: TabBar(
            padding: EdgeInsets.only(left: 30, right: 30),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade600,border: Border.all(color: Colors.white),shape: BoxShape.rectangle
            ),
            tabs: [
              Tab(
                child: Text(
                  'User',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Mechanic',
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            User(), // Call the first class
            Mechanic(),
            // Call the second class
          ],
        ),
      ),
    );
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: InkWell(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return vechicle_login();
        },));
      },
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("ASSETS/person.jpeg"),
                            )),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 82),
                            child: Text(
                              "Name",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          Text(
                            'Location\nMobile Number\nEmail',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          // itemCount: 20,
        ),
      ),
    );
  }
}



class Mechanic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: InkWell(onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Admin_mechanic();
        },));
      },
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("ASSETS/person.jpeg"),
                            )),
                      ),
                      SizedBox(width: 10.w,),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 82),
                            child: Text(
                              "Name",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Text(
                            'Mobile Number\nservice',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          // itemCount: 20,
        ),
      ),
    );
  }
}