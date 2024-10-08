import 'package:cloud_firestore/cloud_firestore.dart';
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                color: Colors.blue.shade600,
                border: Border.all(color: Colors.white),
                shape: BoxShape.rectangle),
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
  var Name_ctrl = TextEditingController();
  var Number_ctrl = TextEditingController();
  var Email_ctrl = TextEditingController();
  var Location_ctrl = TextEditingController();
  var Password_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('Usersignupdetails')
              .snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator(
                color: Colors.red,
              );
            }
            if (snapshot.hasError) {
              return Text('error: ${snapshot.error}');
            }
            final usersign= snapshot.data?.docs ?? [];
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return vechicle_login();
                  },
                ));
              },
              child: ListView.builder(
                itemCount: usersign.length,
                itemBuilder: (context, index) {
                  final doc = usersign[index];
                  final usersignup = doc.data() as Map<String, dynamic>;
                  return Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: NetworkImage("Name:${usersignup["Profile"] ?? ''}"),
                              )),
                            ),
                            SizedBox(width: 20.w),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(alignment: Alignment.centerLeft,
                                  child: Wrap(
                                      children: [Text(
                                        "Name:${usersignup["Name"] ?? ''}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),]
                                  ),
                                ),
                                Align(alignment: Alignment.centerLeft,
                                  child: Wrap(
                                      children: [Text(
                                        "Phone no:${usersignup["Number"] ?? ''}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),]
                                  ),
                                ),
                                Align(alignment: Alignment.centerLeft,
                                  child: Wrap(
                                      children: [Text(
                                        "Email:${usersignup["Email"] ?? ''}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),]
                                  ),
                                ),
                                Align(alignment: Alignment.centerLeft,
                                  child: Wrap(
                                      children: [Text(
                                        "Location:${usersignup["Location"] ?? ''}",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),]
                                  ),
                                ),
                                Align(alignment: Alignment.centerLeft,
                                  child: Wrap(
                                    children: [Text(
                                      "Password:${usersignup["Password"] ?? ''}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),]
                                  ),
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
            );
          }),
    );
  }
}

class Mechanic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Admin_mechanic();
            },
          ));
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
                        height: 70.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage("ASSETS/person.jpeg"),
                        )),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
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
