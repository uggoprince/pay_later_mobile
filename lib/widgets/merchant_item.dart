import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';
import '../models/merchant.dart';
import 'merchant_logo.dart';

class MerchantItem extends StatelessWidget {
  final Merchant merchant;
  final VoidCallback? onTap;

  const MerchantItem({
    super.key,
    required this.merchant,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Logo with status badge
          Stack(
            children: [
              MerchantLogo(
                text: merchant.logoText,
                backgroundColor: merchant.backgroundColor,
                textColor: merchant.textColor,
                size: 74,
                // You can add customChild: ... if you want to support icons/images
              ),
              // Status badge
              Positioned(
                right: 0,
                top: 6,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: merchant.statusColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Merchant name
          SizedBox(
            width: 80,
            child: Text(
              merchant.name,
              style: AppStyles.merchantName,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
