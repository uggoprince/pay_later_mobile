import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants/app_colors.dart';
import '../constants/app_styles.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;

  const ProductCard({
    super.key,
    required this.product,
    this.onTap,
  });

  String formatPrice(double price) {
    final formatter = NumberFormat('#,###', 'en_US');
    return '₦ ${formatter.format(price.toInt())}';
  }

  String formatOriginalPrice(double price) {
    final formatter = NumberFormat('#,###', 'en_US');
    return '₦ ${formatter.format(price.toInt())}';
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadow.withValues(alpha: 0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Store logo/name
              // _buildStoreHeader(),
              // const SizedBox(height: 8),

              // Product image
              _buildProductImage(),
              const SizedBox(height: 12),

              // Product name
              Text(
                product.name,
                style: AppStyles.productName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),

              // Prices
              Row(
                children: [
                  Text(
                    formatPrice(product.price),
                    style: AppStyles.productPrice,
                  ),
                  const SizedBox(width: 12),
                  if (product.hasDiscount)
                    Text(
                      formatOriginalPrice(product.originalPrice),
                      style: AppStyles.productOriginalPrice,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoreHeader() {
    return Row(
      children: [
        // Store logo placeholder
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: _getStoreColor(),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              product.storeName.isNotEmpty
                  ? product.storeName[0].toUpperCase()
                  : 'S',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            product.storeName,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: _getStoreTextColor(),
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildProductImage() {
    return Container(
      height: 102,
      width: double.infinity,
      decoration: BoxDecoration(
        // color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return _buildPlaceholderImage();
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return _buildLoadingIndicator();
                },
              ),
            ),
          ),
          // Spherical overlay with customizable child (text or image)
          if (product.badgeText != null && product.badgeText!.isNotEmpty)
            Positioned(
              left: 0,
              top: 0,
              child: _buildCircleOverlay(
                child: Text(
                  product.badgeText!,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCircleOverlay({required Widget child}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 10,
          ),
        ],
      ),
      child: Center(
        child: SizedBox(
          width: 40,
          height: 40,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: child,
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholderImage() {
    return Container(
      // color: AppColors.cardBackground,
      child: const Center(
        child: Icon(
          Icons.image_outlined,
          size: 40,
          // color: AppColors.textMuted,
        ),
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return const Center(
      child: SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: AppColors.primary,
        ),
      ),
    );
  }

  Color _getStoreColor() {
    switch (product.storeName.toLowerCase()) {
      case 'ogabassey':
        return const Color(0xFF4CAF50);
      case 'sales366':
        return const Color(0xFFE53935);
      case 'okayfones':
        return const Color(0xFF1A1A2E);
      case 'imate stores':
        return const Color(0xFF1A1A2E);
      default:
        return AppColors.primary;
    }
  }

  Color _getStoreTextColor() {
    switch (product.storeName.toLowerCase()) {
      case 'ogabassey':
        return AppColors.buttonPrimary;
      case 'sales366':
        return AppColors.buttonPrimary;
      default:
        return AppColors.textSecondary;
    }
  }
}
