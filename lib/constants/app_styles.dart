import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppStyles {
  AppStyles._();

  // Header styles
  static const TextStyle headerTitle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    color: AppColors.textPrimary,
    height: 1.2,
  );

  static const TextStyle shoppingLimit = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  static const TextStyle shoppingLimitValue = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Button styles
  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.buttonText,
  );

  // Search bar
  static const TextStyle searchHint = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.searchHint,
  );

  // Product card styles
  static const TextStyle productName = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  static const TextStyle productPrice = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.priceRed,
  );

  static const TextStyle productOriginalPrice = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.priceOriginal,
    decoration: TextDecoration.lineThrough,
  );

  // Section title
  static const TextStyle sectionTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle viewAll = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  // Merchant name
  static const TextStyle merchantName = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
}
