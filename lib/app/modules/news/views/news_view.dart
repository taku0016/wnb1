import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wnb1/app/routes/app_pages.dart';
import 'package:wnb1/app/utils/news_card.dart';
import 'package:wnb1/theme/app_colors.dart';
import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ctl = controller;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: const Text('NewsView'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () => Get.toNamed(AppPages.WEATHER),
              icon: const Icon(Icons.cloud))
        ],
      ),
      body: Center(child: Obx(() {
        if (ctl.news.value != null) {
          final news = ctl.news.value;
          return ListView.builder(
            itemCount: news?.articles.length,
            itemBuilder: (BuildContext context, int index) {
              return NewsCard(news: news!.articles[index]);
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      })),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Get.toNamed(AppPages.BMI),
          label: const Text(" Go BMI"),
          heroTag: null),
    );
  }
}
