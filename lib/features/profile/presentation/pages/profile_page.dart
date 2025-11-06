import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_stat_card.dart';
import '../widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // AppBar
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: AppColors.primary,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: AppColors.primaryGradient,
                ),
                child: const SafeArea(
                  child: ProfileHeader(
                    name: 'Иванов Иван',
                    email: 'student@ayu.edu.kz',
                    imageUrl: '',
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
            ],
          ),

          // Stats
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Expanded(
                    child: ProfileStatCard(
                      icon: Icons.book,
                      label: 'Сабақтар',
                      value: '12',
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProfileStatCard(
                      icon: Icons.assignment,
                      label: 'Тапсырмалар',
                      value: '8',
                      color: AppColors.secondary,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ProfileStatCard(
                      icon: Icons.grade,
                      label: 'GPA',
                      value: '3.8',
                      color: AppColors.accent,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Menu
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.person,
                      title: 'Профильді өңдеу',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.calendar_today,
                      title: 'Менің кестем',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.school,
                      title: 'Үлгерім',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.bookmark,
                      title: 'Сақталғандар',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.shopping_bag,
                      title: 'Менің жарнамаларым',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          // Settings & Support
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.notifications,
                      title: 'Хабарландырулар',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.security,
                      title: 'Қауіпсіздік',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.language,
                      title: 'Тіл',
                      trailing: const Text('Қазақша'),
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.dark_mode,
                      title: 'Түнгі режим',
                      trailing: Switch(
                        value: false,
                        onChanged: (value) {},
                        activeColor: AppColors.primary,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 16)),

          // Help & Info
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: Column(
                  children: [
                    ProfileMenuItem(
                      icon: Icons.help_outline,
                      title: 'Көмек орталығы',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.info_outline,
                      title: 'Қосымша туралы',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.description,
                      title: 'Пайдалану шарттары',
                      onTap: () {},
                    ),
                    const Divider(height: 1),
                    ProfileMenuItem(
                      icon: Icons.logout,
                      title: 'Шығу',
                      titleColor: AppColors.accent,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),

          SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Нұсқа 1.0.0',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
    );
  }
}
