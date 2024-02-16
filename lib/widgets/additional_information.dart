import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

TextStyle infoFont = const TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 16.0,
  color: Color(0xFFC0C0C0),
);

TextStyle titleFont = const TextStyle(
  fontSize: 16.0,
  color: Color(0xFFC0C0C0),
);

Widget additionalInformation(
    String wind,
    String humidity,
    String pressure,
    String feels_like,
    String min,
    String max,
    String wind_direction,
    String visibility,
    String cloud_cover) {
  return Container(
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(70.0, 5.0, 70.0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("Min Temp", style: titleFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$min\u00b0", style: infoFont),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Max Temp", style: titleFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$max\u00b0", style: infoFont),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Feels Like", style: titleFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$feels_like\u00b0", style: infoFont),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70.0, 5.0, 70.0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        "Wind",
                        style: titleFont,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$wind m/s", style: infoFont),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Pressure", style: titleFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$pressure mb", style: infoFont),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Humidity", style: titleFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$humidity%", style: infoFont),
                    ],
                  ),
                ],
              ),
            ),
//next row
            Padding(
              padding: const EdgeInsets.fromLTRB(70.0, 5.0, 70.0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("Wind Deg", style: titleFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$wind_direction \u00b0", style: infoFont),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Visibility", style: titleFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$visibility", style: infoFont),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Cloud Cover", style: titleFont),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("$cloud_cover%", style: infoFont),
                    ],
                  ),
                ],
              ),
            ),
            //next row
          ],
        ),
      ],
    ),
  );
}
