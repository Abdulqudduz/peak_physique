import 'package:geolocator/geolocator.dart';

class Location {
  double? longitude;
  double? latitude;

  Location({this.latitude, this.longitude});

  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.low,
    distanceFilter: 100,
  );

  Future<void> getCurrentLocation() async {
    // Request permission before getting the location
    LocationPermission permission = await Geolocator.checkPermission();

    // Request permission if not granted yet
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        // Permission denied, handle this accordingly
        print('Location permission denied.');
        return;
      }
    }

    try {
      Position position = await Geolocator.getCurrentPosition(
          locationSettings: locationSettings);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print('Failed to get location: $e');
    }
  }
}
