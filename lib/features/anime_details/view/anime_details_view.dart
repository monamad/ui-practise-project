import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/core/thmems/app_color_manager.dart';
import 'package:miniapp/core/thmems/text_style.dart';
import 'package:miniapp/features/home/data/models/anime_model.dart';
import 'package:miniapp/features/upgrade_plan/view/upgrade_plan_view.dart';

class AnimeDetailsView extends StatelessWidget {
  final AnimeModel anime;
  const AnimeDetailsView({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.customBlack,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 519.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(anime.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 60.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildGenreTag('Dark Fantasy'),
                            SizedBox(width: 12.w),
                            _buildGenreTag('Action'),
                            SizedBox(width: 12.w),
                            _buildGenreTag('Adventure'),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.white.withValues(alpha: .2),
                        height: 1.h,
                      ),
                      SizedBox(height: 10.h),

                      SizedBox(
                        height: 20.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildStat(Icons.visibility, '2.3M views'),
                            SizedBox(width: 24.w),
                            _buildStat(Icons.favorite_border, '2K clap'),
                            SizedBox(width: 24.w),
                            _buildStat(Icons.calendar_today, '4 Seasons'),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Divider(
                        color: Colors.white.withValues(alpha: .2),
                        height: 1.h,
                      ),

                      SizedBox(height: 20.h),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 24.w,
                            height: 24.h,
                            margin: EdgeInsets.only(right: 12.w, top: 2.h),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: RadialGradient(
                                colors: [Colors.orange, Colors.red],
                              ),
                            ),
                            child: Icon(
                              Icons.local_fire_department,
                              color: Colors.white,
                              size: 16.sp,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.',
                              style: AppTextStyles.whiteOpacity14MediumH05,

                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20.h),

                      SizedBox(
                        height: 50.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 44.h,
                              width: 163.w,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(25.r),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 20.sp,
                                  ),
                                  SizedBox(width: 8.w),
                                  Text(
                                    'preview',
                                    style: AppTextStyles.white14bold,
                                  ),
                                ],
                              ),
                            ),

                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UpgradePlanView(),
                                ),
                              ),
                              child: Container(
                                height: 44.h,
                                width: 163.w,
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(25.r),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                      size: 20.sp,
                                    ),
                                    SizedBox(width: 8.w),
                                    Text(
                                      'Watch Now',
                                      style: AppTextStyles.white14bold,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 30.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 450.h,
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 80.r,
                child: Image.asset(
                  'assets/anime_icon.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGenreTag(String text) {
    return Container(
      height: 26.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: Center(child: Text(text, style: AppTextStyles.white10Medium)),
    );
  }

  Widget _buildStat(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white.withOpacity(0.8), size: 16.sp),
        SizedBox(width: 6.w),
        Text(text, style: AppTextStyles.whiteOpacity14MediumH05),
      ],
    );
  }
}
