import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/news_list_item.dart';
import '../widgets/featured_news_card.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: AppColors.surface,
              title: const Text('Жаңалықтар'),
              actions: [
                IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                IconButton(
                  icon: const Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
                const SizedBox(width: 8),
              ],
              bottom: TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorColor: AppColors.primary,
                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.textSecondary,
                tabs: const [
                  Tab(text: 'Барлығы'),
                  Tab(text: 'Оқиғалар'),
                  Tab(text: 'Білім'),
                  Tab(text: 'Спорт'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildNewsList(),
            _buildNewsList(),
            _buildNewsList(),
            _buildNewsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsList() {
    return CustomScrollView(
      slivers: [
        // Featured News
        SliverToBoxAdapter(
          child: SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              itemCount: 3,
              itemBuilder: (context, index) {
                return const FeaturedNewsCard(
                  imageUrl: '',
                  title: 'Маңызды жаңалық',
                  category: 'Оқиғалар',
                  date: '28 қазан 2025',
                );
              },
            ),
          ),
        ),

        // News List
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return const NewsListItem(
                imageUrl: '',
                title: 'Университетте жаңа оқу жылы басталды',
                description:
                    'Ахмет Ясауи университетінде салтанатты түрде жаңа оқу жылы ашылды...',
                category: 'Білім',
                date: '28 қазан 2025',
                views: 1234,
              );
            }, childCount: 10),
          ),
        ),
      ],
    );
  }
}
