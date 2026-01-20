import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../widgets/header_section.dart';
import '../widgets/custom_search_bar.dart';

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
            
            // Search bar - overlapping the header
            
            const CustomSearchBar(),            
            
            // Bottom padding for safe area
            SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
          ],
        ),
      ),
    );
  }
}
