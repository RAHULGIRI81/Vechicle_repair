import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin_add_notification.dart';
import 'Admin_vechicle_login.dart';



class Admin_notification extends StatefulWidget {
  const Admin_notification({super.key});

  @override
  State<Admin_notification> createState() => _Admin_notificationState();
}

class _Admin_notificationState extends State<Admin_notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.blue[700],
        ),
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Admin_add_notification();
        },));},
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return vechicle_login();
                      },
                    ));
                  },
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("ASSETS/person.jpeg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(60)),
                  ),
                )
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "HEADING",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Loreum ipsum is a placeholder text commonly\nused to demonstrate the visual form of a\ndocument or a typeface without relying...",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
