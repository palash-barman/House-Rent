import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'contant/bast_offer.dart';
import 'contant/categories.dart';
import 'contant/custom_app_bar.dart';
import 'contant/recommended_house.dart';
import 'contant/search_bar.dart';
import 'contant/welcome_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const WellcomeText(),
              SizedBox(
                height: 15.h,
              ),
              const SearchBar(),
              SizedBox(
                height: 12.h,
              ),
              Categories(),
              SizedBox(
                height: 10.h,
              ),
              RecommendedHouse(),
              SizedBox(
                height: 10.h,
              ),
              BastOffer(),
            ],
          ),
        ),
      )),
      // bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
