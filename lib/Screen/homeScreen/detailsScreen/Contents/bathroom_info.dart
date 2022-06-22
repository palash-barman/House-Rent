import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class HouseInfo extends StatelessWidget {
  String contant1,contant2,image;

  HouseInfo({
    Key? key,
    required this.image,required this.contant1,required this.contant2
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 165.w,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 42,
            width:40,
            child: SvgPicture.asset(image,fit: BoxFit.cover,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(contant1,style: TextStyle(fontSize: 14.sp,color: Colors.grey),),
              Text(contant2,style: TextStyle(fontSize: 14.sp,color: Colors.grey,overflow: TextOverflow.ellipsis),)
            ],
          )
        ],
      ),
    );
  }
}