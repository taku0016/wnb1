import 'package:get/get.dart';
import 'package:wnb1/app/data/models/weather.dart';
import 'package:wnb1/app/data/repositore/weather_repo.dart';

class WeatherController extends GetxController {
  Rx<Weather?> weather = Rxn();
  final repo = WeatherRepo();

  Future<void> getWeather() async {
    weather.value = await repo.getWeather();
  }

  @override
  void onInit() {
    super.onInit();
    getWeather();
  }
}
