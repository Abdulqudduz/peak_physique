import 'package:Clima/utilities/valid_cities.dart';

class CityIsValid {
  ValidCities validCities = ValidCities();
  String? name;

  bool checkCity(String cityName) {
    if (cityName.length > 2 && !RegExp(r'[0-9]').hasMatch(cityName)) {
      name = cityName[0].toString().toUpperCase() +
          cityName.substring(1).toLowerCase();
    }
    if (validCities.cityNames.contains(name)) {
      return true;
    } else {
      return false;
    }
  }
}
