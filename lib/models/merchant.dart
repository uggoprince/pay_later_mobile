import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

enum MerchantStatus {
  online,
  busy,
  offline,
}

class Merchant {
  final String id;
  final String name;
  final String logoText;
  final Color backgroundColor;
  final Color textColor;
  final MerchantStatus status;
  final bool hasLogo;
  final String? logoAsset;

  const Merchant({
    required this.id,
    required this.name,
    required this.logoText,
    required this.backgroundColor,
    this.textColor = Colors.white,
    this.status = MerchantStatus.online,
    this.hasLogo = false,
    this.logoAsset,
  });

  Color get statusColor {
    switch (status) {
      case MerchantStatus.online:
        return AppColors.badgeGreen;
      case MerchantStatus.busy:
        return AppColors.badgeOrange;
      case MerchantStatus.offline:
        return AppColors.badgeGray;
    }
  }
}

class MerchantData {
  static const List<Merchant> merchants = [
    Merchant(
      id: '1',
      name: 'Justrite',
      logoText: 'Justrite',
      backgroundColor: Color(0xFF1A237E),
      status: MerchantStatus.online,
    ),
    Merchant(
      id: '2',
      name: 'Orile Restaurant',
      logoText: 'ORILẸ',
      backgroundColor: Color(0xFF1A1A2E),
      status: MerchantStatus.online,
    ),
    Merchant(
      id: '3',
      name: 'Slot',
      logoText: 'SLOT',
      backgroundColor: Color(0xFFE53935),
      status: MerchantStatus.busy,
    ),
    Merchant(
      id: '4',
      name: 'Pointek',
      logoText: 'Pointek',
      backgroundColor: Color(0xFF00BCD4),
      status: MerchantStatus.busy,
    ),
    Merchant(
      id: '5',
      name: 'ogabassey',
      logoText: 'ogabassey',
      backgroundColor: Color(0xFF4CAF50),
      status: MerchantStatus.online,
    ),
    Merchant(
      id: '6',
      name: 'Casper Stores',
      logoText: 'CASPER',
      backgroundColor: Color(0xFF2196F3),
      status: MerchantStatus.online,
    ),
    Merchant(
      id: '7',
      name: 'Dreamworks',
      logoText: 'DREAMWORKS',
      backgroundColor: Color(0xFFE91E63),
      status: MerchantStatus.online,
    ),
    Merchant(
      id: '8',
      name: 'Hubmart',
      logoText: 'HUBMART',
      backgroundColor: Color(0xFF1A1A2E),
      status: MerchantStatus.offline,
    ),
    Merchant(
      id: '9',
      name: 'Just Used',
      logoText: 'JU',
      backgroundColor: Color(0xFF00BCD4),
      status: MerchantStatus.online,
    ),
    Merchant(
      id: '10',
      name: 'Just fones',
      logoText: 'JUST FONES',
      backgroundColor: Color(0xFFFFFFFF),
      textColor: Color(0xFF1A1A2E),
      status: MerchantStatus.offline,
    ),
  ];
}
