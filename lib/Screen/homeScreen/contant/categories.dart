import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controller/home_screen_controller.dart';

class Categories extends StatelessWidget {
  Categories({
    Key? key,
  }) :  super(key: key);

  final HomeScreenController _homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context,
            int index) => SizedBox(width: 18.w,),
        itemCount: _homeScreenController.categoriesList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap:(){
              _homeScreenController.currentSelect.value=index;
            },
            child: Obx(()=>Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: _homeScreenController.currentSelect.value==index?Theme.of(context).primaryColor:Colors.transparent,
                        width: 3,
                      )
                  )
              ),
              child: Text(_homeScreenController.categoriesList[index],
                style: TextStyle(fontSize:_homeScreenController.currentSelect.value==index?18.sp:16.sp,
                    fontWeight: _homeScreenController.currentSelect.value==index?FontWeight.bold:FontWeight.normal,
                    color: _homeScreenController.currentSelect.value==index?Theme.of(context).primaryColor:Theme.of(context).textTheme.bodyText1!.color
                ),),
            ),
            ),
          );
        },
      ),
    );
  }
}