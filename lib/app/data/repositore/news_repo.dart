import 'package:dio/dio.dart';
import 'package:wnb1/app/constant/api_const.dart';

import '../models/news_models.dart';

class NewsRepo {
  // dio же http менен AppConst.newsApi
  // барып data алып келип жана аны
  // News dataны news моделине беруу
  final dio = Dio();

  Future<News?> getNews() async {
    final respons = await dio.get(ApiConst.NewssApi);
    if (respons.statusCode == 200 || respons.statusCode == 201) {
      final news = News.fromJson(respons.data);
      return news;
    } else {
      return null;
    }
  }
}
