import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:house_rent_project/widget/circle_icon_button.dart';

import 'Contents/bathroom_info.dart';

class DetailsScreen extends StatelessWidget {
  String name,address,image;

   DetailsScreen({Key? key,required this.name,required this.image,required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
          height: 330.h,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.transparent,
                child: Hero(
                  tag: image,
                  child: Image.asset(
                    image, fit: BoxFit.cover,),
                ),

              ),
              SafeArea(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    GestureDetector(
                        onTap: (){
                          Get.back();
                        },
                        child: const CircleIconButton(color: Colors.grey, icon: 'assets/icon/arrow.svg')),
                    const CircleIconButton(color: Colors.redAccent, icon: 'assets/icon/mark.svg')
                  ],
                ),
              ))
            ],
          ),
        ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: Theme.of(context).textTheme.headline1!.copyWith(fontSize:25.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 6.h,),
                  Text(address,style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 6.h,),
                  Text("50000 sqft",style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:18.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 5.h,),
                  RichText(
                      text:TextSpan(
                        text: "\$ 4455 ",style:Theme.of(context).textTheme.headline1!.copyWith(fontSize:18.sp,fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: 'Per Month',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize:16.sp,fontWeight: FontWeight.w600),
                          )
                        ]
                      )),
                  SizedBox(height: 5.h,),
                  //bedroom
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Bed Room
                      HouseInfo(image: 'assets/icon/bedroom.svg', contant1:'5 Bedroom', contant2:'3 Master bedroom'),
                      //bath Room
                     HouseInfo(image: 'assets/icon/bathroom.svg', contant1:'5 Bathroom', contant2:'3 Toilet')
                    ],
                  ),

                  SizedBox(height: 10.h,),
                 // kitchen
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Kitchen room
                     HouseInfo(image: 'assets/icon/kitchen.svg', contant1:'2 Kitchen', contant2:'120 sqft'),
                      // Parking
                      HouseInfo( image: 'assets/icon/parking.svg',
                        contant1: '2 Parking ',contant2: '180 sqft',),

                    ],
                  ),
                  // about ....
                  SizedBox(height: 10.h,),
                  Text("About",style: Theme.of(context).textTheme.headline1!.copyWith(fontWeight:FontWeight.bold,fontSize: 25.sp),),
                  SizedBox(height: 5.h,),
                  Text("Enim veinam dolor sint ipsum culpa magna dolore incididunt laborum excepteu....",style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 16.sp,),),
                  SizedBox(height: 10.h,),
                  ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(350.w, 43.h),
                      textStyle:  TextStyle(fontSize: 25.sp,color:Colors.white,fontWeight: FontWeight.bold),
                      primary: const Color(0xFF811B83),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)
                      )

                    ),
                      child: const Text("Book Now"),
                  ),
                ],
              ),
            ),




        ]
      ),
      )

    );
  }
}


