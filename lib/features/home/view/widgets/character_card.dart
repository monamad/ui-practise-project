import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/features/upgrade_plan/view/upgrade_plan_view.dart';
import '../../../../core/thmems/text_style.dart';
import '../../data/models/character_model.dart';

class CharacterCard extends StatelessWidget {
  final CharacterModel character;

  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => UpgradePlanView()),
        );
      },
      child: Container(
        width: 100.w,
        margin: EdgeInsets.only(right: 15.w),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(46.w),
              child: Container(
                width: 92.w,
                height: 92.w,
                decoration: BoxDecoration(color: Colors.grey[300]),
                child: character.imageUrl.isNotEmpty
                    ? Image.asset(
                        character.imageUrl,
                        width: 92.w,
                        height: 92.w,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[400],
                            child: Icon(
                              Icons.person,
                              size: 40.w,
                              color: Colors.white,
                            ),
                          );
                        },
                      )
                    : Container(
                        color: Colors.grey[400],
                        child: Icon(
                          Icons.person,
                          size: 40.w,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            SizedBox(height: 3.h),

            Text(
              character.name,
              style: AppTextStyles.customblack12w600,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            Text(
              character.animeName,
              style: AppTextStyles.silverChalice14w600,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
