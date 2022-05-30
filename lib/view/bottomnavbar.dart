import 'package:fitnes_app/view/dashboard.dart';
import 'package:fitnes_app/view/profil_set_screen.dart';
import 'package:fitnes_app/view/welcome_screen.dart';
import 'package:fitnes_app/view/workoutscreen.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import '../view/workoutscreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int pageIndex = 0;
final pages = [
  // const HomePage(),
  // const ActivityPage(),
  const ProfileDashboard(),
];

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              print('search');
            },
            child: Icon(
              IconlyLight.search,
              color: Colors.white,
              size: 20,
            ),
            backgroundColor: Color(0xff92A3FD),
            elevation: 5,
            splashColor: Colors.grey,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? const ImageIcon(
                          AssetImage('assets/icons/Home.png'),
                          color: Color(0xffADA4A5),
                          size: 35,
                        )
                      : const ImageIcon(
                          AssetImage('assets/icons/Home.png'),
                          color: Color(0xffADA4A5),
                          size: 35,
                        ),
                ),
              ),
            ),
            // Expanded(
            //   child: Container(
            //     child: IconButton(
            //       enableFeedback: false,
            //       onPressed: () {
            //         setState(() {
            //           pageIndex = 0;
            //         });
            //       },
            //       icon: pageIndex == 0
            //           ? const ImageIcon(
            //               AssetImage('assets/icons/Activity.png'),
            //               color: Color(0xffADA4A5),
            //               size: 35,
            //             )
            //           : const ImageIcon(
            //               AssetImage('assets/icons/Activity.png'),
            //               color: Color(0xffADA4A5),
            //               size: 35,
            //             ),
            //     ),
            //   ),
            // ),
            Expanded(
              child: InkWell(
                onTap: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ActivityPage(),
                    ),
                  )
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/icons/Activity.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/icons/Camera.png'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  icon: pageIndex == 0
                      ? const ImageIcon(
                          AssetImage('assets/icons/Profile-Active.png'),
                          color: Color(0xffEEA4CE),
                          size: 35,
                        )
                      : const ImageIcon(
                          AssetImage('assets/icons/Profile-Active.png'),
                          color: Color(0xffADA4A5),
                          size: 35,
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
