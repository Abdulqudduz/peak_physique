import 'package:Clima/widgets/search_city_widget.dart';
import 'package:flutter/material.dart';
import 'package:Clima/widgets/select_theme.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 50.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectTheme(context);
                      });
                    },
                    child: Icon(
                      Icons.settings,
                      size: 50.0,
                    ),
                  ),
                ),
              ],
            ),
            SearchCityWidget(),
          ],
        ),
      ),
    );
  }
}
