import 'package:fitnes_app/view/profil_set_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                height: 370,
                width: 290,
                child: Column(
                  children: [
                    Image.asset("assets/images/home_bg_image.png"),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Welcome To",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF7C6DDB),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "OUR FITNESS CARE",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF7C6DDB),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      builder: (context) => ProfilePage(),
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
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
