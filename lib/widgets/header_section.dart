import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.headerStart,
            AppColors.headerEnd,
          ],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 24, 20, 32),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Left side - Title with info icon
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Flexible(
                          child: Text(
                            'Pay later\neverywhere',
                            style: AppStyles.headerTitle,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.7),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.info_rounded,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Right side - Shopping limit and button
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Shopping limit
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Shopping limit: ',
                          style: AppStyles.shoppingLimit,
                        ),
                        TextSpan(
                          text: '₦0',
                          style: AppStyles.shoppingLimitValue,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Activate Credit button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonPrimary,
                      foregroundColor: AppColors.buttonText,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Activate Credit',
                      style: AppStyles.buttonText,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
