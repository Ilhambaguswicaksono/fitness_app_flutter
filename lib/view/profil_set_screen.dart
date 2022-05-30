import 'package:fitnes_app/view/bottomnavbar.dart';
import 'package:fitnes_app/view/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';
import '../widget/date_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController _controller = new TextEditingController();
  var items = ['Male', 'Female'];

  String fullName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   automaticallyImplyLeading: false,
      //   backgroundColor: Colors.white,
      // ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/images/home_bg_image.png"),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffF7F8F8),
                  ),
                  width: 315,
                  height: 50,
                  child: TextField(
                    readOnly: true,
                    controller: _controller,
                    style: TextStyle(
                      color: const Color(0xffADA4A5),
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Choose Gender",
                      labelStyle: TextStyle(
                        color: const Color(0xffADA4A5),
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(IconlyLight.user),
                      prefixIconColor: Colors.grey,
                      suffixIconColor: Colors.grey,
                      suffixIcon: PopupMenuButton<String>(
                        icon: const Icon(IconlyLight.arrow_down_2),
                        onSelected: (String value) {
                          _controller.text = value;
                        },
                        itemBuilder: (BuildContext context) {
                          return items
                              .map<PopupMenuItem<String>>((String value) {
                            return new PopupMenuItem(
                                child: new Text(
                                  value,
                                  style: TextStyle(
                                    color: const Color(0xffADA4A5),
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                value: value);
                          }).toList();
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xffF7F8F8),
                  ),
                  width: 315,
                  height: 50,
                  child: TextField(
                    inputFormatters: [],
                    style: TextStyle(
                      color: const Color(0xffADA4A5),
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      labelText: "Date of Birth",
                      labelStyle: TextStyle(
                        color: const Color(0xffADA4A5),
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: Icon(IconlyLight.calendar),
                      prefixIconColor: Colors.grey,
                      suffixIconColor: Colors.grey,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xffF7F8F8),
                      ),
                      width: 250,
                      height: 50,
                      child: TextField(
                        inputFormatters: [],
                        style: TextStyle(
                          color: const Color(0xffADA4A5),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                          labelText: "Your Weight",
                          labelStyle: TextStyle(
                            color: const Color(0xffADA4A5),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(IconlyLight.heart),
                          prefixIconColor: Colors.grey,
                          suffixIconColor: Colors.grey,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Berat");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xffC58BF2),
                              Color(0xffEEA4CE),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "KG",
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
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color(0xffF7F8F8),
                      ),
                      width: 250,
                      height: 50,
                      child: TextField(
                        inputFormatters: [],
                        style: TextStyle(
                          color: const Color(0xffADA4A5),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                          labelText: "Your Height",
                          labelStyle: TextStyle(
                            color: const Color(0xffADA4A5),
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Icon(IconlyLight.swap),
                          prefixIconColor: Colors.grey,
                          suffixIconColor: Colors.grey,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Tinggi");
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color(0xffC58BF2),
                              Color(0xffEEA4CE),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "CM",
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
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 10),
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Let’s complete your profile",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "It will help us to know more about you!",
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(90),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavBar(),
                        ),
                      )
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(90),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Color(0xff9DCEFF),
                            Color(0xff92A3FD),
                          ],
                        ),
                      ),
                      width: 315,
                      height: 60,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Icon(IconlyLight.arrow_right_2,
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
