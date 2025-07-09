import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:next_starter/common/extensions/extensions.dart';

class BaseLogo extends StatelessWidget {
  const BaseLogo({
    super.key,
    this.isSmall = false,
  });

  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: 12.rounded,
      child: Image.asset(
        'assets/images/logo.png',
        height: isSmall ? null : 100.h,
        width: isSmall ? 68.w : null,
        fit: BoxFit.cover,
      ),
    );
  }
}
