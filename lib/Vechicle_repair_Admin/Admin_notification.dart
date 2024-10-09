import 'package:cloud_firestore/cloud_firestore.dart';
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
  String? id;
  var Name_ctrl = TextEditingController();
  var Price_ctrl = TextEditingController();

  Future<void> delete(String id) async {
    await FirebaseFirestore.instance.collection("notification").doc(id).delete();
  }


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
      body: StreamBuilder(stream: FirebaseFirestore.instance
          .collection('notification')
          .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot>snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return CircularProgressIndicator(color:  Colors.green,);
        }
        if (snapshot.hasError){
          return Text('error:${snapshot.error}');
        }
        final vechicle_notification = snapshot.data?.docs??[];
return Padding(
  padding: const EdgeInsets.only(top: 30, right: 20, left: 20),

  child:
  Column(
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
            itemCount: vechicle_notification.length,
            itemBuilder: (context, index) {
              final doc = vechicle_notification[index];
              final vechiclenotification = doc.data() as Map<String, dynamic>;
              return Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Matter :${vechiclenotification["Matter"] ?? ''} ",
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
                      child: Wrap(
                        children: [
                          Text(
                            "Content :${vechiclenotification["Content"] ?? ''} ",
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
);
      },
      ),
    );
  }
}
