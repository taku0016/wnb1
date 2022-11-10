import 'package:get/get.dart';
import 'package:wnb1/app/data/repositore/news_repo.dart';

import '../../../data/news_models.dart';

class NewsController extends GetxController {
  final newsRepo = NewsRepo();
  Rx<News?> news = Rxn<News>();

  final count = 0.obs;
  Future<void> getNews() async {
    news.value = await newsRepo.getNews();
  }

  @override
  void onInit() {
    super.onInit();
    getNews();
  }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  void increment() => count.value++;
}
