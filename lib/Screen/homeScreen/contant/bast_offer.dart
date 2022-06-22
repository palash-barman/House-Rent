import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:house_rent_project/Screen/homeScreen/detailsScreen/detials_screen.dart';

import '../../../../../model/house_model.dart';
import '../../../../../widget/circle_icon_button.dart';



class BastOffer extends StatelessWidget {
   BastOffer({Key? key}) : super(key: key);
  final _bastOfferList=HouseModel.generateBastOffer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(" Best Offer ",style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 18.sp,fontWeight: FontWeight.bold),),
            Text("See All  ",style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w700,fontSize: 16.sp),)
          ],
        ),
        ..._bastOfferList.map((element)=>Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(8),
          height: 80.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.r))
          ),
          child: GestureDetector(
          onTap: (){
            Get.to(DetailsScreen(name:element.name, image:element.image, address:element.address));
          },
            child: Stack(
              children: [
                Row(
                  children: [
                    Hero(
                      tag: element.image,
                      child: Container(
                        height: 70.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10.r)),
                            image: DecorationImage(
                              image: AssetImage(element.image),fit:BoxFit.cover,
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(element.name,style:Theme.of(context).textTheme.headline1!.copyWith(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                        SizedBox(height: 8.h,),
                        Text(element.address,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontWeight: FontWeight.w600,fontSize: 14.sp),)
                      ],
                    ),
                  ],
                ),

                 const Positioned(
                    top:0,
                    right:0,
                    child: CircleIconButton(color: Colors.grey, icon:"assets/icon/heart.svg"))
              ],

            ),
          ),
        ),
        ).toList()
      ],
    );
  }
}
