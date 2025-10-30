import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/story_item.dart';
import '../widgets/service_item.dart';
import '../widgets/product_card.dart';
import '../widgets/news_card.dart';

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
                  child: const Icon(
                    Icons.school,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'University Life',
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
                    const Icon(Icons.notifications_outlined),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 4,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
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
                        onPressed: () {},
                        child: const Text('Барлығы'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 240,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const ProductCard(
                        imageUrl: '',
                        title: 'Оқулық',
                        price: '3500',
                        rating: 4.5,
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
