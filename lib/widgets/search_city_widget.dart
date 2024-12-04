import 'package:flutter/material.dart';
import 'package:Clima/utilities/city_is_valid.dart';

class SearchCityWidget extends StatefulWidget {
  @override
  _SearchCityWidgetState createState() => _SearchCityWidgetState();
}

class _SearchCityWidgetState extends State<SearchCityWidget> {
  String? cityName;
  bool cityIsValid = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        onChanged: (value) {
          setState(() {
            cityName = value;
            cityIsValid = CityIsValid().checkCity(cityName ?? 'default city');
          });
        },
        onSubmitted: (value) {
          setState(() {
            cityName = value;
            cityIsValid = CityIsValid().checkCity(cityName ?? 'default city');

            if (cityIsValid) {
              Navigator.pop(context, cityName);
            }
          });
        },
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.black,
            ),
        cursorColor: cityIsValid
            ? Theme.of(context).textSelectionTheme.cursorColor
            : Colors.red,
        decoration: InputDecoration(
          filled: true,
          icon: Icon(Icons.location_city),
          prefixIcon: Icon(Icons.search),
          hintText: 'Enter city name for weather',
          errorText: cityIsValid ? null : 'Invalid city name',
          focusedBorder: OutlineInputBorder(
            borderRadius: (Theme.of(context).inputDecorationTheme.focusedBorder
                        as OutlineInputBorder?)
                    ?.borderRadius ??
                BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: cityIsValid
                  ? Theme.of(context)
                          .inputDecorationTheme
                          .focusedBorder
                          ?.borderSide
                          .color ??
                      Colors.grey
                  : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
