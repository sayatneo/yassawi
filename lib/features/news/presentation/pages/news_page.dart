import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/news_list_item.dart';
import '../widgets/featured_news_card.dart';
import '../widgets/club_item.dart';
import 'club_detail_page.dart';

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
        // Clubs Section
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Клубтар',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    ClubItem(
                      name: 'IT Club',
                      icon: Icons.computer,
                      color: AppColors.primary,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClubDetailPage(
                              clubName: 'IT Club',
                              icon: Icons.computer,
                              color: AppColors.primary,
                            ),
                          ),
                        );
                      },
                    ),
                    ClubItem(
                      name: 'Робототехника',
                      icon: Icons.smart_toy,
                      color: AppColors.secondary,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClubDetailPage(
                              clubName: 'Робототехника',
                              icon: Icons.smart_toy,
                              color: AppColors.secondary,
                            ),
                          ),
                        );
                      },
                    ),
                    ClubItem(
                      name: 'Дебат клубы',
                      icon: Icons.mic,
                      color: AppColors.accent,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClubDetailPage(
                              clubName: 'Дебат клубы',
                              icon: Icons.mic,
                              color: AppColors.accent,
                            ),
                          ),
                        );
                      },
                    ),
                    ClubItem(
                      name: 'Фото клуб',
                      icon: Icons.camera_alt,
                      color: Color(0xFFE91E63),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClubDetailPage(
                              clubName: 'Фото клуб',
                              icon: Icons.camera_alt,
                              color: Color(0xFFE91E63),
                            ),
                          ),
                        );
                      },
                    ),
                    ClubItem(
                      name: 'Шахмат',
                      icon: Icons.casino,
                      color: Color(0xFF9C27B0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClubDetailPage(
                              clubName: 'Шахмат',
                              icon: Icons.casino,
                              color: Color(0xFF9C27B0),
                            ),
                          ),
                        );
                      },
                    ),
                    ClubItem(
                      name: 'Музыка',
                      icon: Icons.music_note,
                      color: Color(0xFFFFA500),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClubDetailPage(
                              clubName: 'Музыка',
                              icon: Icons.music_note,
                              color: Color(0xFFFFA500),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),

        // Featured News
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Маңызды жаңалықтар',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
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
            ],
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
