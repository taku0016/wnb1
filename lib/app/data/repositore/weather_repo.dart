import 'package:dio/dio.dart';
import 'package:wnb1/app/constant/api_const.dart';
import 'package:wnb1/app/data/models/weather.dart';

class WeatherRepo {
  final dio = Dio();

  Future<Weather?> getWeather() async {
    final respons = await dio.get(ApiConst.weatherApi);
    if (respons.statusCode == 200 || respons.statusCode == 201) {
      final weather = Weather.fromJson(respons.data);
      return weather;
    } else {
      return null;
    }
  }
}
