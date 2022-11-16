import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../theme/text_styles.dart';
import '../constant/api_const.dart';
import '../data/models/news_models.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news});

  final Article news;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: CachedNetworkImage(
                imageUrl: news.urlToImage ?? ApiConst.defaultImage,
                placeholder: (context, url) => Image.asset('assets/new.jpg'),
                errorWidget: (context, url, e) =>
                    Image.asset('assets/news.jpg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              flex: 5,
              child: Text(
                news.title,
                style: AppTextStyle.newsTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
