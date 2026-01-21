import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';
import '../models/merchant.dart';
import 'merchant_item.dart';

class FeaturedMerchantsSection extends StatelessWidget {
  final VoidCallback? onViewAllTap;

  const FeaturedMerchantsSection({
    super.key,
    this.onViewAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Featured Merchants',
                  style: AppStyles.sectionTitle,
                ),
                GestureDetector(
                  onTap: onViewAllTap,
                  child: const Text(
                    'View all',
                    style: AppStyles.viewAll,
                  ),
                ),
              ],
            ),
          ),

          // Merchants grid (no horizontal padding for justify-between effect)
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: _buildMerchantsGrid(),
          ),
        ],
      ),
    );
  }

  Widget _buildMerchantsGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        // childAspectRatio: 0.75,
        crossAxisSpacing: 28,
        mainAxisSpacing: 16,
      ),
      itemCount: MerchantData.merchants.length,
      itemBuilder: (context, index) {
        return MerchantItem(
          merchant: MerchantData.merchants[index],
          onTap: () {
            // Handle merchant tap
          },
        );
      },
    );
  }
}
