import 'package:flutter/material.dart';
import 'package:Clima/screens/city_screen.dart';
import 'package:Clima/services/weather.dart';

class CityButtonWidget extends StatelessWidget {
  final Function updateUI;
  final WeatherModel weather;
  final Function hasError;

  CityButtonWidget({
    required this.updateUI,
    required this.weather,
    required this.hasError,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        var typedName = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CityScreen();
            },
          ),
        );

        if (typedName != null) {
          try {
            var weatherData = await weather.getCityWeather(typedName);
            if (weatherData == null) {
              hasError();
            } else {
              updateUI(weatherData);
            }
          } catch (e) {
            hasError();
          }
        }
      },
      child: Icon(
        Icons.location_city,
        size: 50.0,
      ),
    );
  }
}
