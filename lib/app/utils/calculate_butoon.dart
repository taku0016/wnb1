import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text.dart';
import '../../theme/text_styles.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({Key? key, required this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        color: AppColor.buttonColor,
        child: const Center(
          child: Text(AppText.calculate, style: AppTextStyle.titleStyle),
        ),
      ),
    );
  }
}
