import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WellcomeText extends StatelessWidget {
  const WellcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello Palash!",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 16.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            "Find your sweet Home",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),


        ],
      ),
    );
  }
}