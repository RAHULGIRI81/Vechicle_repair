import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin_vechicle_nav.dart';


class Admin_add_notification extends StatefulWidget {
  const Admin_add_notification({super.key});

  @override
  State<Admin_add_notification> createState() => _Admin_add_notificationState();
}

class _Admin_add_notificationState extends State<Admin_add_notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return vachicle_nav();
                    },));
                  },
                    child: Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(color: Colors.blue[100]),
                        child: Icon(Icons.arrow_back_ios_sharp)),
                  )
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Enter Matter',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Matter'),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Enter Content',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TextField(maxLines: 20,decoration: InputDecoration.collapsed(hintText: '     context....',border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),fillColor: Colors.white,filled: true),)
                ],
              ),
              SizedBox(height: 60.h),
              Container(
                height: 35.h,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text('Submit', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
