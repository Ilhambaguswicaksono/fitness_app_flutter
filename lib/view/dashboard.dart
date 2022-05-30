import 'package:flutter_switch/flutter_switch.dart';
import 'package:fitnes_app/view/profil_set_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../widget/personalData.dart';
import 'dart:ui' as ui;

class ProfileDashboard extends StatefulWidget {
  const ProfileDashboard({Key? key}) : super(key: key);

  @override
  State<ProfileDashboard> createState() => _ProfileDashboardState();
}

class _ProfileDashboardState extends State<ProfileDashboard> {
  bool status = true;

  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(),
              ),
            );
          },
          icon: ImageIcon(
            AssetImage('assets/icons/back_icon.png'),
            color: Colors.black,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: ImageIcon(
              AssetImage('assets/icons/3_horizontal_line_icon.png'),
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              height: 85,
                              width: 85,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3.0,
                                  color: Color.fromARGB(88, 149, 174, 254),
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              width: 75,
                              height: 75,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.0, color: Colors.white),
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child:
                                  Image.asset("assets/images/profil_image.png"),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            "Monica Gamage",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff1D1617),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            "Lose a fat progreme",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff7B6F72),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("Edit");
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 15,
                            ),
                            width: 85,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(99),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: <Color>[
                                  Color(0xff9DCEFF),
                                  Color(0xff92A3FD),
                                ],
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 65,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              child: PersonalData(
                                data: '180',
                                keteranganparameter: 'cm',
                                keterangan: 'Height',
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              child: PersonalData(
                                data: '65',
                                keteranganparameter: 'kg',
                                keterangan: 'Weight',
                              ),
                            ),
                            PersonalData(
                              data: '22',
                              keteranganparameter: 'yo',
                              keterangan: 'Age',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(35, 0, 0, 0),
                              spreadRadius: 0,
                              blurRadius: 60,
                              offset:
                                  Offset(0, 20), // changes position of shadow
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        height: 200,
                        width: 315,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20, top: 20, bottom: 15),
                              child: Text("Account"),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  print("Personal Data");
                                },
                                child: Container(
                                  height: 20,
                                  width: 280,
                                  // color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: Tab(
                                              icon: ShaderMask(
                                                blendMode: BlendMode.srcIn,
                                                shaderCallback: (Rect bounds) {
                                                  return ui.Gradient.linear(
                                                    Offset(24.0, 24.0),
                                                    Offset(24.0, 24.0),
                                                    [
                                                      Color(0xff9DCEFF),
                                                      Color(0xff92A3FD),
                                                    ],
                                                  );
                                                },
                                                child: Icon(
                                                  IconlyLight.profile,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "Personal Data",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff7B6F72)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          IconlyLight.arrow_right_2,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  print("Achievment");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  height: 20,
                                  width: 280,
                                  // color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: Tab(
                                              icon: ShaderMask(
                                                blendMode: BlendMode.srcIn,
                                                shaderCallback: (Rect bounds) {
                                                  return ui.Gradient.linear(
                                                    Offset(24.0, 24.0),
                                                    Offset(24.0, 24.0),
                                                    [
                                                      Color(0xff9DCEFF),
                                                      Color(0xff92A3FD),
                                                    ],
                                                  );
                                                },
                                                child: Icon(
                                                  IconlyLight.document,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "Achievement",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff7B6F72)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          IconlyLight.arrow_right_2,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  print("Activity history");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 15),
                                  height: 20,
                                  width: 280,
                                  // color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: Tab(
                                              icon: ShaderMask(
                                                blendMode: BlendMode.srcIn,
                                                shaderCallback: (Rect bounds) {
                                                  return ui.Gradient.linear(
                                                    Offset(24.0, 24.0),
                                                    Offset(24.0, 24.0),
                                                    [
                                                      Color(0xff9DCEFF),
                                                      Color(0xff92A3FD),
                                                    ],
                                                  );
                                                },
                                                child: Icon(
                                                  IconlyLight.graph,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "Activity History",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff7B6F72)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          IconlyLight.arrow_right_2,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  print("workout progres");
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: 15,
                                  ),
                                  height: 20,
                                  width: 280,
                                  // color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            child: Tab(
                                              icon: ShaderMask(
                                                blendMode: BlendMode.srcIn,
                                                shaderCallback: (Rect bounds) {
                                                  return ui.Gradient.linear(
                                                    Offset(24.0, 24.0),
                                                    Offset(24.0, 24.0),
                                                    [
                                                      Color(0xff9DCEFF),
                                                      Color(0xff92A3FD),
                                                    ],
                                                  );
                                                },
                                                child: Icon(
                                                  IconlyLight.chart,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "Workout Progress",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff7B6F72)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        child: Icon(
                                          IconlyLight.arrow_right_2,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, bottom: 20),
                        height: 100,
                        width: 315,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(35, 0, 0, 0),
                              spreadRadius: 0,
                              blurRadius: 60,
                              offset:
                                  Offset(0, 30), // changes position of shadow
                            )
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 20,
                              ),
                              child: Text("Notification"),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: Tab(
                                        icon: ShaderMask(
                                          blendMode: BlendMode.srcIn,
                                          shaderCallback: (Rect bounds) {
                                            return ui.Gradient.linear(
                                              Offset(24.0, 24.0),
                                              Offset(24.0, 24.0),
                                              [
                                                Color(0xff9DCEFF),
                                                Color(0xff92A3FD),
                                              ],
                                            );
                                          },
                                          child: Icon(
                                            IconlyLight.notification,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Pop up notification",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff7B6F72),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  child: FlutterSwitch(
                                    activeColor: Color(0xffEEA4CE),
                                    width: 40,
                                    height: 20,
                                    toggleSize: 15,
                                    value: status,
                                    borderRadius: 99,
                                    showOnOff: false,
                                    onToggle: (val) {
                                      setState(() {
                                        status = val;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
