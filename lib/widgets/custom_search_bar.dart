import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';

class CustomSearchBar extends StatelessWidget {
  final VoidCallback? onScanTap;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? hintText;

  const CustomSearchBar({
    super.key,
    this.onScanTap,
    this.controller,
    this.onChanged,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Row(
        children: [
          // Search bar
          Expanded(
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.searchBackground,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                child: TextField(
                  controller: controller,
                  onChanged: onChanged,
                  style: AppStyles.searchHint,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: hintText ?? 'Search for products or stores',
                    hintStyle: AppStyles.searchHint,
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.searchHint.withOpacity(0.9),
                      size: 22,
                    ),
                    // Removed contentPadding for even padding
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),
          // Scan button
          GestureDetector(
            onTap: onScanTap,
            child: Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                color: AppColors.searchBackground,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.qr_code_scanner_outlined,
                color: AppColors.textSecondary,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
