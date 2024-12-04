import 'package:Clima/services/weather.dart';
import 'package:Clima/utilities/network_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:Clima/utilities/constants.dart';
import 'package:Clima/widgets/city_button_widget.dart';

class LocationScreen extends StatefulWidget {
  final dynamic locationWeather;

  LocationScreen({required this.locationWeather});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int? temperature;
  int? condition;
  String? cityName;
  String? weatherIcon;
  String? weatherMessage;
  WeatherModel weather = WeatherModel();
  bool hasError = false;

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        weatherIcon = 'Error';
        weatherMessage = 'Unable to get weather data';
        cityName = '';
        return;
      }
      temperature = weatherData['main']['temp']?.toInt() ?? 0;
      condition = weatherData['weather'][0]['id'];
      cityName = weatherData['name'] ?? 'Unknown location';
      weatherIcon = weather.getWeatherIcon(condition ?? 0);
      weatherMessage = weather.getMessage(temperature ?? 0);
    });
  }

  void handleError() {
    setState(() {
      hasError = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: hasError
          ? Center(
              child: NetworkError(
                statusCode: 408,
                onPressed: () async {
                  setState(() {
                    hasError = false;
                  });

                  print('RETRYING LOCATION');
                  try {
                    var weatherData = await weather.getLocationWeather();
                    updateUI(weatherData);
                  } catch (e) {
                    setState(() {
                      hasError = true;
                    });
                  }
                },
              ),
            )
          : Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/background_image/location_background.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.8), BlendMode.dstATop),
                ),
              ),
              constraints: BoxConstraints.expand(),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        TextButton(
                          onPressed: () async {
                            try {
                              var weatherData =
                                  await weather.getLocationWeather();
                              updateUI(weatherData);
                            } catch (e) {
                              setState(() {
                                hasError = true;
                              });
                            }
                          },
                          child: Icon(
                            Icons.near_me,
                            size: 50.0,
                          ),
                        ),
                        CityButtonWidget(
                          updateUI: updateUI,
                          weather: weather,
                          hasError: handleError,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            '$temperature°',
                            style: kTempTextStyle,
                          ),
                          Text(
                            weatherIcon ?? '',
                            style: kConditionTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        "${weatherMessage ?? ''} in $cityName!",
                        textAlign: TextAlign.right,
                        style: kMessageTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
