import 'dart:ffi';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PersonalData extends StatelessWidget {
  const PersonalData(
      {Key? key,
      required this.data,
      required this.keterangan,
      required this.keteranganparameter})
      : super(key: key);

  final String data;
  final String keterangan;
  final String keteranganparameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      height: 65,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(35, 0, 0, 0),
            spreadRadius: 0,
            blurRadius: 20,
            offset: Offset(0, 4), // changes position of shadow
          )
        ],
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GradientText('$data$keteranganparameter',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              gradientType: GradientType.linear,
              gradientDirection: GradientDirection.ttb,
              radius: .4,
              colors: [
                Color(0xff9DCEFF),
                Color(0xff92A3FD),
              ]),
          Text(
            keterangan,
            style: TextStyle(
              color: Color(0xff7B6F72),
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
