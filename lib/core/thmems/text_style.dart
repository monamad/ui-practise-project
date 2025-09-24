import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miniapp/core/thmems/app_color_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle black24Bold = GoogleFonts.raleway(
    fontSize: 24.w,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle customblack24Bold = GoogleFonts.raleway(
    fontSize: 24.w,
    fontWeight: FontWeight.bold,
    color: AppColors.customBlack,
  );
  static TextStyle customblack14Bold = GoogleFonts.raleway(
    fontSize: 14.w,
    fontWeight: FontWeight.bold,
    color: AppColors.customBlack,
  );
  static TextStyle white12bold = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle white14bold = GoogleFonts.raleway(
    fontSize: 14.w,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle primary14bold = GoogleFonts.raleway(
    fontSize: 14.w,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  static TextStyle grey14Medium = GoogleFonts.raleway(
    fontSize: 14.w,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );
  static TextStyle black12bold = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle customblack12w600 = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.w600,
    color: AppColors.customBlack,
  );
  static TextStyle customblack12Medium = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.w500,
    color: AppColors.customBlack,
  );

  static TextStyle grey12Regular = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );
  static TextStyle silverChalice14w600 = GoogleFonts.raleway(
    fontSize: 14.w,
    fontWeight: FontWeight.w600,
    color: Color(0xffACACAC),
  );

  static TextStyle white12Medium = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle customblackOpacity12Medium = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.w500,
    color: AppColors.customBlack.withOpacity(0.5),
  );

  static TextStyle customblack18Bold = GoogleFonts.raleway(
    fontSize: 18.w,
    fontWeight: FontWeight.bold,
    color: AppColors.customBlack,
  );

  static TextStyle customblack16Bold = GoogleFonts.raleway(
    fontSize: 16.w,
    fontWeight: FontWeight.bold,
    color: AppColors.customBlack,
  );

  static TextStyle customblack14Medium = GoogleFonts.raleway(
    fontSize: 14.w,
    fontWeight: FontWeight.w500,
    color: AppColors.customBlack,
  );

  static TextStyle white16Bold = GoogleFonts.raleway(
    fontSize: 16.w,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle customgray14bold = GoogleFonts.raleway(
    fontSize: 14.w,
    fontWeight: FontWeight.bold,
    color: Color(0xffA49AD8),
  );

  static TextStyle white24Bold = GoogleFonts.raleway(
    fontSize: 24.w,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle white18Bold = GoogleFonts.raleway(
    fontSize: 18.w,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static TextStyle white10Medium = GoogleFonts.raleway(
    fontSize: 10.w,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle orange12Bold = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.bold,
    color: Colors.orange,
  );

  static TextStyle whiteOpacity14MediumH05 = GoogleFonts.raleway(
    fontSize: 12.w,
    fontWeight: FontWeight.w500,
    color: Colors.white.withOpacity(0.8),
    height: 1,
  );
}
