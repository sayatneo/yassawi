import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/data/products_data.dart';
import '../widgets/category_chip.dart';
import '../widgets/marketplace_product_card.dart';
import 'cart_page.dart';

class MarketplacePage extends StatefulWidget {
  const MarketplacePage({super.key});

  @override
  State<MarketplacePage> createState() => _MarketplacePageState();
}

class _MarketplacePageState extends State<MarketplacePage> {
  int _selectedCategory = 0;
  final List<String> _categories = [
    'Барлығы',
    'Оқулықтар',
    'Электроника',
    'Киім',
    'Спорт',
    'Тағы',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // AppBar
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.surface,
            centerTitle: false,
            title: const Text('Маркетплейс', style: TextStyle(
              fontFamily: "Atyp"
            ),),
            actions: [
              IconButton(
                icon: Stack(
                  children: [
                    const Icon(IconlyBroken.filter),
                  ],
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const CartPage()),
                  // );
                },
              ),
              const SizedBox(width: 8),
            ],
          ),

          // Search
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Іздеу...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),

          // Categories
          SliverToBoxAdapter(
            child: SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  return CategoryChip(
                    label: _categories[index],
                    isSelected: _selectedCategory == index,
                    onTap: () {
                      setState(() => _selectedCategory = index);
                    },
                  );
                },
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          // Products Grid
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                final products = _selectedCategory == 0
                    ? ProductsData.getAllProducts()
                    : ProductsData.getProductsByCategory(_categories[_selectedCategory]);
                
                if (index >= products.length) return const SizedBox.shrink();
                
                return MarketplaceProductCard(
                  product: products[index],
                );
              }, childCount: ProductsData.getAllProducts().length),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}
