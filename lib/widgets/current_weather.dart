import 'package:flutter/material.dart';

Widget currentWeather(String temp, String location) {
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 45.0,
        ),
        Text(
          "$temp\u00b0",
          style: TextStyle(
            fontSize: 40.0,
            color: Color(0xFFC0C0C0),
          ),
        ),
        Text(
          "$location",
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFFC0C0C0),
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    ),
  );
}
