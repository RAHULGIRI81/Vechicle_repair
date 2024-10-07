import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/Vechicle_repair.dart';
import 'package:vehicle_repair/Vechicle_user/User_mechanic_list.dart';
import 'Vechicle_repair_Admin/Admin_vechicle_nav.dart';
import 'Vechicle_user/User_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) =>
        MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
         
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:Vechicle_main(),
      ),
      designSize: Size(412, 892),
    );
  }
}
