import 'package:flutter/material.dart';

import '../../theme/app_text.dart';
import '../../theme/text_styles.dart';

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: Color.fromARGB(255, 126, 139, 180),
      title: const Center(
        child: Text(
          AppText.appBarTitle,
          style: AppTextStyle.resultTextStyle,
        ),
      ),
      content: Text(
        text,
        style: AppTextStyle.resultTextStyle,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(AppText.backButton),
        ),
      ],
    ),
  );
}
