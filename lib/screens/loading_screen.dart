import 'package:Clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:Clima/utilities/network_error_widget.dart';
import 'package:Clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? longitude;
  double? latitude;
  bool _hasError = false;
  int? code;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    try {
      var weatherData = await WeatherModel().getLocationWeather();

      if (weatherData != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LocationScreen(locationWeather: weatherData);
            },
          ),
        );
      } else {
        code = await weatherData.statusCode ?? 503;
      }
    } catch (e) {
      setState(() {
        _hasError = true;
        print("THIS IS $code");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _hasError
            ? NetworkError(
                statusCode: code ?? 408,
                onPressed: () {
                  setState(() {
                    _hasError = false;
                  });

                  print('RETRYING LOCATION');
                  getLocationData();
                },
              )
            : SpinKitDoubleBounce(
                color: Colors.blue,
              ),
      ),
    );
  }
}
