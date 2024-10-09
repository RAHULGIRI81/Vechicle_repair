import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_repair/Vechicle_mechanic/Mechanic_login.dart';


class Mechanic_signup extends StatefulWidget {
  const Mechanic_signup({super.key});

  @override
  State<Mechanic_signup> createState() => _Mechanic_signupState();
}

class _Mechanic_signupState extends State<Mechanic_signup> {
  var MechName_ctrl = TextEditingController();
  var MechNumber_ctrl = TextEditingController();
  var MechEmail_ctrl = TextEditingController();
  var MechExperience_ctrl = TextEditingController();
  var MechShopName_ctrl = TextEditingController();
  var MechPassword_ctrl = TextEditingController();

  Future<void> Mech_signup() async {
    FirebaseFirestore.instance.collection("Usersignupdetails").add({
      "MechProfile":
      "https://www.google.com/imgres?q=profile%20photo&imgurl=https%3A%2F%2Feasy-peasy.ai%2Fcdn-cgi%2Fimage%2Fquality%3D80%2Cformat%3Dauto%2Cwidth%3D700%2Fhttps%3A%2F%2Ffdczvxmwwjwpwbeeqcth.supabase.co%2Fstorage%2Fv1%2Fobject%2Fpublic%2Fimages%2Fb40abfdb-f5af-450a-99d9-1096098287a6%2Fa1a6a4d4-d52a-4991-a6b0-9bae7d2f93af.png&imgrefurl=https%3A%2F%2Feasy-peasy.ai%2Fai-image-generator%2Fimages%2Fdynamic-abstract-design-whatsapp-profile-picture-young-man-passion-music-intellectual-sports&docid=ST4GFfqR8r1GBM&tbnid=fqfeNqRVtBqx3M&vet=12ahUKEwiu14Crr_-IAxUCj68BHTDkGH8QM3oECEQQAA..i&w=700&h=700&hcb=2&ved=2ahUKEwiu14Crr_-IAxUCj68BHTDkGH8QM3oECEQQAA",
      "MechName": MechName_ctrl.text,
      "MechNumber": MechNumber_ctrl.text,
      "MechEmail":  MechEmail_ctrl.text,
      "MechExperience": MechExperience_ctrl.text,
      "MechShopName": MechShopName_ctrl.text,
      "MechPassword": MechPassword_ctrl.text,
      "State":0,
    });
    Navigator.pop(context);
  }

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Mechanic_login();
                        },));

                      },
                      icon: Icon(
                        CupertinoIcons.back,
                        color: Colors.black,
                        size: 35.sp,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: Column(
                children: [
                  Container(
                    width: 200.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("ASSETS/tow1.png"))),
                  ),
                  Center(
                      child: Text(
                        'SIGN UP',
                        style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w900),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter Username',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: MechName_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter Phone number',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: MechNumber_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Phone number',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your email',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: MechEmail_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter email',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your Work Experience',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: MechExperience_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter your Experience',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your Work Shop Name',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: MechShopName_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter your Shop Name',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            'Enter your password',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          controller: MechPassword_ctrl,
                          decoration: InputDecoration(
                              hintText: 'Enter your password',
                              focusColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(0)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(
                      onTap: () {
                        Mech_signup();
                      },
                      child: Container(
                        height: 50.h,
                        width: 220.w,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                            child: Text(
                              'SIGN UP',
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
          ],
        ),
      ),
    );
  }
}
