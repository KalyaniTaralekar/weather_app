import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_api_client.dart';
import 'package:weather_app/widgets/additional_information.dart';
import 'package:weather_app/widgets/current_weather.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherApp(),
    );
  }
}

class WeatherApp extends StatefulWidget {
  const WeatherApp({super.key});

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  //api call
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getcurrentWeather("Kolhapur");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF002147),
      appBar: AppBar(
        backgroundColor: Color(0xFFC0C0C0),
        elevation: 0.0,
        title: Text(
          "Weather App",
          style: TextStyle(color: Color(0xFF002147)),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.menu), color: Color(0xFF002147)),
      ),
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70.0,
                  ),
                  WeatherIcon(
                    iconCode: '${data!.icon}',
                  ),
                  currentWeather("${data!.temp}", "${data!.cityName}"),
                  SizedBox(
                    height: 60.0,
                  ),
                  Text(
                    "Additional Information",
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Color(0xFFC0C0C0),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  additionalInformation(
                    "${data!.wind}",
                    "${data!.humidity}",
                    "${data!.pressure}",
                    "${data!.feels_like}",
                    "${data!.min}",
                    "${data!.max}",
                    "${data!.wind_direction}",
                    "${data!.visibility}",
                    "${data!.cloud_cover}",
                  ),
                ],
              );
            }
            return Container();
          }),
    );
  }
}

class WeatherIcon extends StatelessWidget {
  final String iconCode;

  WeatherIcon({required this.iconCode});

  @override
  Widget build(BuildContext context) {
    return Icon(
      getIconForWeather(iconCode),
      size: 100.0,
      color: Colors.orange[400],
    );
  }

  IconData getIconForWeather(String code) {
    Map<String, IconData> iconMappings = {
      '01d': Icons.wb_sunny, // clear sky day
      '01n': Icons.brightness_2, // clear sky night
      '02d': Icons.wb_cloudy, // few clouds day
      '02n': Icons.wb_cloudy, // few clouds night
      '03d': Icons.cloud, // scattered clouds day
      '03n': Icons.cloud, // scattered clouds night
      '04d': Icons.cloud_outlined, // broken clouds day
      '04n': Icons.cloud_outlined, // broken clouds night
      '09d': Icons.shower, // shower rain day
      '09n': Icons.shower, // shower rain night
      '10d': Icons.water_drop_rounded, // rain day
      '10n': Icons.water_drop_rounded, // rain night
      '11d': Icons.bolt_rounded, // thunderstorm day
      '11n': Icons.bolt_rounded, // thunderstorm night
      '13d': Icons.ac_unit, // snow day
      '13n': Icons.ac_unit, // snow night
      '50d': Icons.cloud_circle, // mist day
      '50n': Icons.cloud_circle, // mist night
    };
    return iconMappings[code] ?? Icons.error;
  }
}
