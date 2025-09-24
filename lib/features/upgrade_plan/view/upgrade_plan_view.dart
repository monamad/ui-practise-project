import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/core/thmems/app_color_manager.dart';
import 'package:miniapp/core/thmems/text_style.dart';
import 'package:miniapp/core/widgets/gradient_scaffold.dart';
import 'widgets/subscription_plan_card.dart';

class UpgradePlanView extends StatelessWidget {
  const UpgradePlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      defaultGradientStart: [Color(0xffd5d8ff), Colors.white],
      backgroundImage: 'assets/Star1.png',
      imageTop: 170,
      imageRight: -206,
      imageWidth: 400,
      imageHeight: 300,
      secondBackgroundImage: 'assets/Star2.png',
      secondImageTop: -150,
      secondImageLeft: -170,
      secondImageWidth: 400,
      secondImageHeight: 400,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50.h),

            // First text - 32h
            SizedBox(
              height: 36.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Upgrade Plan', style: AppTextStyles.customblack24Bold),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close,
                        color: Colors.black,
                        size: 20.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Image - 207h
            SizedBox(
              height: 207.h,
              child: Center(
                child: Container(
                  width: 180.w,
                  height: 180.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Rocket Boy 1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),

            // Second and third text - 92h
            SizedBox(
              height: 92.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Seamless Anime Experience, Ad-Free.',
                    style: AppTextStyles.customblack18Bold,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    'Enjoy unlimited anime streaming without interruptions.',
                    style: AppTextStyles.customblackOpacity12Medium,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            // Subscription section - 220h
            SizedBox(
              height: 250.h,
              child: Column(
                children: [
                  SubscriptionPlanCard(
                    title: 'Monthly',
                    price: '\$5 USD',
                    period: 'Month',
                    description: 'Include Family Sharing',
                    isSelected: true,
                    isPopular: true,
                  ),
                  SubscriptionPlanCard(
                    title: 'Annually',
                    price: '\$50 USD',
                    period: 'Year',
                    description: 'Include Family Sharing',
                    isSelected: false,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            // Button - 46h
            SizedBox(
              height: 46.h,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(23.r),
                  ),
                  elevation: 0,
                ),
                child: Text('Continue', style: AppTextStyles.white16Bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
