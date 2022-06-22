import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


import '../chatScreen/chat_screen.dart';
import '../homeScreen/home_screen.dart';
import '../homeSearchScreen/home_search_screen.dart';
import '../markScreen/mark_screen.dart';
import '../notificationScreen/notification_screen.dart';
import 'controller/bottom_navigation_controller.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({Key? key}) : super(key: key);
  final BottomNavigationController _navigationController =
      Get.put(BottomNavigationController());

  final _page = [
    HomePage(),
    const SearchScreen(),
    const NotificationScreen(),
    const ChatScreen(),
    const MarkScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,

      body: Obx(() => _page[_navigationController.currentIndex.value]),

      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Container(
              color: Colors.transparent,
              height: 55.h,
              child: Obx(()=> DotNavigationBar(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    marginR: const EdgeInsets.all(0),
                    paddingR: const EdgeInsets.all(5),
                    currentIndex:_navigationController.currentIndex.value,
                    dotIndicatorColor: Colors.white,
                    selectedItemColor:const Color(0xFF811B83),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 7,
                          spreadRadius: 1,
                          offset: const Offset(0, 3))
                    ],
                    backgroundColor: Colors.white,
                    unselectedItemColor: Colors.grey[600],
                    onTap: (value) {
                      _navigationController.currentIndex.value=value;
                    },
                    items: [
                      /// Home
                    DotNavigationBarItem(
                        icon: const Icon(Icons.home,),
                        selectedColor: const Color(0xFF811B83),
                      ),

                      /// search
                      DotNavigationBarItem(
                        icon: const Icon(Icons.search,),
                        selectedColor: const Color(0xFF811B83),
                      ),

                      /// notification
                      DotNavigationBarItem(
                        icon: const Icon(Icons.notifications,),
                        selectedColor:const Color(0xFF811B83),
                      ),

                      /// chat
                      DotNavigationBarItem(
                        icon: const Icon(Icons.chat,),
                        selectedColor: const Color(0xFF811B83),
                      ),
                      DotNavigationBarItem(
                        icon: const Icon(Icons.bookmark,),
                        selectedColor: const Color(0xFF811B83),
                      ),
                    ],
            ),
              ),
        ),
      ),

    );
  }
}
