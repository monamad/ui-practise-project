import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/core/thmems/app_color_manager.dart';
import 'package:miniapp/core/thmems/text_style.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(index: 0, icon: Icons.home_filled, label: 'Home'),
          _buildNavItem(
            index: 1,
            icon: Icons.bookmark_outline,
            label: 'Bookmark',
          ),
          _buildNavItem(index: 2, icon: Icons.search, label: 'Search'),
          _buildNavItem(index: 3, icon: Icons.language, label: 'Browse'),
          _buildNavItem(index: 4, icon: Icons.settings, label: 'Settings'),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required String label,
  }) {
    final isSelected = widget.currentIndex == index;

    return GestureDetector(
      onTap: () => widget.onTap(index),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : Colors.grey,
              size: 20.sp,
            ),
            if (isSelected) ...[
              SizedBox(width: 6.w),
              Text(
                label,
                style: isSelected
                    ? AppTextStyles.white12bold
                    : AppTextStyles.grey12Regular,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
