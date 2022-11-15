import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      iconSize: 50,
      color: AppColor.white,
      icon: Icon(icon),
    );
  }
}
