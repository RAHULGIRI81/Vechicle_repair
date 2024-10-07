import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Admin_payment extends StatefulWidget {
  const Admin_payment({super.key});

  @override
  State<Admin_payment> createState() => _Admin_paymentState();
}

class _Admin_paymentState extends State<Admin_payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('ASSETS/person.jpeg'),radius: 25,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 1 ),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Container(
                      height: 100.h,width: 400.w,decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text("Name"),
                                SizedBox(width: 180,),
                                Text('10/11/2023'),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right:  50),
                              child: Row(
                                children: [
                                  Icon(Icons.attach_money),
                                  Text('5455/-')
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text('service'),
                              ],
                            ),
                            Row(
                              children: [
                                Text('Mechanic Name')
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                   
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
