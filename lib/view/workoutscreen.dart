import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffBFDBE9),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 14,
                child: ImageIcon(
                  AssetImage('assets/icons/back.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 85),
                width: 270,
                height: 270,
                child: Image(
                  image: AssetImage('assets/images/Smart Fitness.png'),
                ),
              ),
              Container(
                height: 40,
                width: 25,
                child: ImageIcon(
                  AssetImage('assets/icons/3_line_horizontal.png'),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 7, bottom: 5),
                    width: 50,
                    height: 5,
                    child: Divider(
                      color: Color.fromARGB(255, 212, 212, 212),
                      thickness: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                height: 1300,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
