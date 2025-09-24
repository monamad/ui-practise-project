import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/core/thmems/app_color_manager.dart';
import 'package:miniapp/features/anime_details/view/anime_details_view.dart';
import '../../../../core/thmems/text_style.dart';
import '../../data/models/anime_model.dart';

class AnimePosterCard extends StatelessWidget {
  final AnimeModel anime;

  const AnimePosterCard({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AnimeDetailsView(anime: anime)),
      ),
      child: Container(
        width: 184.w,
        margin: EdgeInsets.only(right: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 184.w,
              height: 245.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: Colors.grey[300],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Stack(
                  children: [
                    Image.asset(
                      anime.imageUrl,
                      width: 184.w,
                      height: 245.h,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 8.h,
                      right: 8.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 2.h,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.primary,
                              size: 12.w,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              anime.rating.toString(),
                              style: AppTextStyles.black12bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),

            Center(
              child: Text(
                anime.title,
                style: AppTextStyles.customblack14Bold,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 2.h),

            Center(
              child: Text(
                anime.genre,
                style: AppTextStyles.grey14Medium,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
