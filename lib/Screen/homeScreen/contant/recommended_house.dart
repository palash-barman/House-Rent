import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:house_rent_project/Screen/homeScreen/detailsScreen/detials_screen.dart';
import '../../../../../model/house_model.dart';
import '../../../../../widget/circle_icon_button.dart';

class RecommendedHouse extends StatelessWidget {
  final  _recommendedList = HouseModel.generateRecommended();

   RecommendedHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: ListView.separated(
          separatorBuilder: (_,index)=>SizedBox(width: 15.w,),
          itemCount:_recommendedList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder:(context,index){
            return GestureDetector(
              onTap: (){
            Get.to(DetailsScreen(name:_recommendedList[index].name,
                image:_recommendedList[index].image,
                address:_recommendedList[index].address));
                print("On Click next Page");
              },
              child: Container(
                width: 230.w,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.r)),
                  color: Colors.white,
                ),
                child: Stack(
                  children: [
                    Hero(
                      tag: _recommendedList[index].image,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.r)),
                          image:DecorationImage(
                            image:AssetImage(_recommendedList[index].image),fit: BoxFit.cover
                          )
                        ),
                      ),
                    ),

                    const Positioned(
                        top: 15,
                        right: 15,
                        child: CircleIconButton(icon:'assets/icon/mark.svg', color:Colors.redAccent,),
                    ),
                    Positioned(
                      bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          height: 50.h,
                          decoration: BoxDecoration(
                            color:Colors.white38,
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.r),bottomRight: Radius.circular(15.r))
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_recommendedList[index].name,style:Theme.of(context).textTheme.headline1!.copyWith(fontSize:18.sp,fontWeight: FontWeight.bold),),
                                  Text(_recommendedList[index].address,style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp,fontWeight: FontWeight.w600),)
                                ],
                              ),
                              const CircleIconButton(color: Colors.redAccent, icon:"assets/icon/heart.svg")
                            ],
                          ),

                        ))
                  ],
                ),
              ),
            );
        },
      ),
    );
  }
}


