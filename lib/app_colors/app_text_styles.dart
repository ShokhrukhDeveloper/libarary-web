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
      backgroundColor:AppColors.black.withOpacity(0.3)
  );
}