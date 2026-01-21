import 'package:credpal_shop/constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_card.dart';

class ProductsGridSection extends StatelessWidget {
  const ProductsGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ProductData.products;
    return ColoredBox(
      color: AppColors.searchBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            _buildHorizontalRow(products),
            const SizedBox(height: 28),
            _buildHorizontalRow(products),
          ],
        ),
      ),
    );
  }

  Widget _buildHorizontalRow(List<Product> products) {
    return SizedBox(
      height: 194, // 👈 card height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: index == products.length - 1 ? 0 : 28,
            ),
            child: SizedBox(
              width: 181, // 👈 card width
              child: ProductCard(
                product: products[index],
                onTap: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
