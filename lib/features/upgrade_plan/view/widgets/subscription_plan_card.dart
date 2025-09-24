import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/core/thmems/app_color_manager.dart';
import 'package:miniapp/core/thmems/text_style.dart';

class SubscriptionPlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String period;
  final String description;
  final bool isSelected;
  final bool isPopular;

  const SubscriptionPlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.period,
    required this.description,
    this.isSelected = false,
    this.isPopular = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.customBlack : Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isSelected
              ? AppColors.customBlack
              : Colors.grey.withValues(alpha: .3),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          // Plan Icon
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.white.withValues(alpha: 0.2)
                  : AppColors.customBlack.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              Icons.play_arrow,
              color: isSelected ? Colors.white : AppColors.customBlack,
              size: 24.sp,
            ),
          ),
          SizedBox(width: 16.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: isSelected
                          ? AppTextStyles.white16Bold
                          : AppTextStyles.customblack16Bold,
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Text(
                      '$price / ',
                      style: isSelected
                          ? AppTextStyles.white14bold
                          : AppTextStyles.customblack14Bold,
                    ),
                    Text(period, style: AppTextStyles.customgray14bold),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(description, style: AppTextStyles.customgray14bold),
              ],
            ),
          ),

          Container(
            width: 24.w,
            height: 24.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? AppColors.primary : Colors.transparent,
              border: Border.all(
                color: isSelected ? AppColors.primary : Colors.grey,
                width: 2,
              ),
            ),
            child: isSelected
                ? Icon(Icons.check, color: Colors.black, size: 16.sp)
                : null,
          ),
        ],
      ),
    );
  }
}
