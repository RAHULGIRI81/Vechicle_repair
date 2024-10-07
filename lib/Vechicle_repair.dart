import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vehicle_repair/Vechicle_mechanic/Mechanic_login.dart';
import 'package:vehicle_repair/Vechicle_repair_Admin/Admin_Login.dart';
import 'package:vehicle_repair/Vechicle_user/User_login.dart';
import 'package:vehicle_repair/Vechicle_user/User_mechanic_list.dart';
import 'package:vehicle_repair/Vechicle_user/User_signup.dart';
import 'package:vehicle_repair/main.dart';

class Vechicle_main extends StatefulWidget {
  const Vechicle_main({super.key});

  @override
  State<Vechicle_main> createState() => _Vechicle_mainState();
}

class _Vechicle_mainState extends State<Vechicle_main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Container(
                      width: 200.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("ASSETS/tow1.png"))),
                    ),
                  ),
                  Text(
                    'Who you are',
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w900),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Mechanic_login(),));
              },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 420,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue.shade900),
                        child: Center(
                            child: Text(
                          "Mechanic",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => User_login(),));
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: 420,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "User",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w800, fontSize: 20),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              InkWell(onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Admin_login(),));
              },
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 50.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                        child: Text(
                      'ADMIN',
                      style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
