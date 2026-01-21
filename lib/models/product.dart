class Product {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double originalPrice;
  final String storeName;
  final String storeLogoUrl;
  final String? badgeText;

  const Product({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.originalPrice,
    required this.storeName,
    required this.storeLogoUrl,
    this.badgeText,
  });

  double get discountPercentage {
    if (originalPrice <= 0) return 0;
    return ((originalPrice - price) / originalPrice * 100);
  }

  bool get hasDiscount => originalPrice > price;
}

// Sample product data matching the design
class ProductData {
  static const List<Product> products = [
    Product(
      id: '1',
      name: 'iPhone XS Max 4GB',
      imageUrl:
          'https://images.unsplash.com/photo-1512054502232-10a0a035d672?w=400',
      price: 295999,
      originalPrice: 315000,
      storeName: 'ogabassey',
      storeLogoUrl: 'ogabassey',
      badgeText: 'Pay 40%',
    ),
    Product(
      id: '2',
      name: 'Masterchef Pressure Cooker',
      imageUrl:
          'https://images.unsplash.com/photo-1585515320310-259814833e62?w=400',
      price: 39780,
      originalPrice: 88000,
      storeName: 'Sales366',
      storeLogoUrl: 'sales366',
      badgeText: 'Ogabasy',
    ),
    Product(
      id: '3',
      name: 'Anker Soundcore',
      imageUrl:
          'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400',
      price: 39780,
      originalPrice: 88000,
      storeName: 'OkayFones',
      storeLogoUrl: 'okayfones',
      badgeText: 'Sales366',
    ),
    Product(
      id: '4',
      name: 'iPhone 12 Pro',
      imageUrl:
          'https://images.unsplash.com/photo-1603891128711-11b4b03bb138?w=400',
      price: 490500,
      originalPrice: 515000,
      storeName: 'iMate Stores',
      storeLogoUrl: 'imatestores',
      badgeText: null,
    ),
  ];
}
