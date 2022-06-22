import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CircleIconButton extends StatelessWidget {
  final Color color;
  final String icon;

  const CircleIconButton({
    Key? key, required this.color, required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 25.h,
      width: 25.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: SvgPicture.asset(icon),

    );
  }
}