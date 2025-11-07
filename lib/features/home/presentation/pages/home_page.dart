import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/data/products_data.dart';
import '../widgets/story_item.dart';
import '../widgets/service_item.dart';
import '../widgets/product_card.dart';
import '../widgets/news_card.dart';
import '../../../marketplace/presentation/pages/marketplace_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // AppBar
          SliverAppBar(
            floating: true,
            snap: true,
            backgroundColor: AppColors.surface,
            title: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    gradient: AppColors.primaryGradient,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Yassawi Life',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Сәлеметсіз бе! 👋',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Stack(
                  children: [
                    const Icon(IconlyBroken.notification),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: const BoxDecoration(
                          color: AppColors.accent,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 8),
            ],
          ),

          // Stories
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Историялар',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return StoryItem(
                        imageUrl: '',
                        title: index == 0 ? 'Сіздің' : 'История ${index + 1}',
                        isAddStory: index == 0,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // Services
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Сервистер',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Барлығы'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    childAspectRatio: 0.85,
                    mainAxisSpacing: 18,
                    crossAxisSpacing: 18,
                    padding: const EdgeInsets.only(bottom: 8),
                    children: const [
                      ServiceItem(
                        icon: Icons.calendar_today,
                        title: 'Кесте',
                        color: AppColors.primary,
                      ),
                      ServiceItem(
                        icon: Icons.menu_book,
                        title: 'Кітапхана',
                        color: AppColors.secondary,
                      ),
                      ServiceItem(
                        icon: Icons.assignment,
                        title: 'Тапсырма',
                        color: AppColors.accent,
                      ),
                      ServiceItem(
                        icon: Icons.groups,
                        title: 'Клубтар',
                        color: Color(0xFFFFA500),
                      ),
                      ServiceItem(
                        icon: Icons.restaurant,
                        title: 'Асхана',
                        color: Color(0xFF4CAF50),
                      ),
                      ServiceItem(
                        icon: Icons.directions_bus,
                        title: 'Көлік',
                        color: Color(0xFF9C27B0),
                      ),
                      ServiceItem(
                        icon: Icons.event,
                        title: 'Оқиғалар',
                        color: Color(0xFFE91E63),
                      ),
                      ServiceItem(
                        icon: Icons.more_horiz,
                        title: 'Тағы',
                        color: AppColors.textSecondary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Products
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Маркетплейс',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MarketplacePage(),
                            ),
                          );
                        },
                        child: const Text('Барлығы'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: ProductsData.getFeaturedProducts().length,
                    separatorBuilder: (context, index) => const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final product = ProductsData.getFeaturedProducts()[index];
                      return ProductCard(
                        product: product,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          // News
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Жаңалықтар',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Барлығы'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return const NewsCard(
                  imageUrl: '',
                  title: 'Жаңа оқу жылы басталды',
                  description:
                      'Университетте жаңа оқу жылы салтанатты түрде ашылды...',
                  date: '28 қазан 2025',
                );
              }, childCount: 3),
            ),
          ),
        ],
      ),
    );
  }
}
