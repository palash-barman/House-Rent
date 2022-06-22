import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText:'Search here....',
          prefixIcon: Container(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset('assets/icon/search.svg'),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.r)),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.all(2),

        ),
      ),

    );
  }
}