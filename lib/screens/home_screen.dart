import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/header_section.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/products_grid_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header section with gradient background
            const HeaderSection(),
            
            // Search bar
            const CustomSearchBar(),    

            // Products grid
            const SizedBox(height: 4),
            const ProductsGridSection(),        
            
            // Bottom padding for safe area
            SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
          ],
        ),
      ),
    );
  }
}
