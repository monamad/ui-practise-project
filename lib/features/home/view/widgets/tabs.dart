import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/core/thmems/app_color_manager.dart';
import 'package:miniapp/core/thmems/text_style.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> tabs = [
      'All',
      'Popular',
      'Trending',
      'New Releases',
      'Top Rated',
    ];
    return SizedBox(
      height: 40.h,

      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: tabs.asMap().entries.map((entry) {
            int index = entry.key;
            String tab = entry.value;
            bool isSelected = index == 0;

            return Container(
              margin: EdgeInsets.only(right: 12.w),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  color: isSelected ? AppColors.primary : Colors.transparent,
                  width: 1,
                ),
              ),
              child: Text(
                tab,
                style: isSelected
                    ? AppTextStyles.white14bold
                    : AppTextStyles.primary14bold,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
