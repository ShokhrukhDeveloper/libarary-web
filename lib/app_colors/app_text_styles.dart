import 'package:flutter/cupertino.dart';
import 'package:referat/app_colors/app_colors.dart';

class AppTextStyles {
  static const textButtonStyle=TextStyle(
    fontSize: 16,color: AppColors.primary
  );
  static const textButton32Style=TextStyle(
    fontSize: 32,color: AppColors.black
  );
  static TextStyle style18w600white=TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: AppColors.white,
      backgroundColor:AppColors.black.withOpacity(0.3));

  static const textBold20Style=TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: AppColors.black
  );
  static const text14W400Style=TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.primary
  );
  static const text14W400StyleBlack=TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.black
  );
  static const text8W400StyleContent=TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.black
  );
  static const text28W700Style=TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: AppColors.secondary
  );
  static const text18W400Black=TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppColors.black
  );
  static const text16W500Black=TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.black
  );
  static const text24W500Black=TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
      color: AppColors.black
  );
  static const text10W400StyleGray=TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: AppColors.gray
  );
}