import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import '../../../home/presentation/pages/home_page.dart';
import '../../../marketplace/presentation/pages/marketplace_page.dart';
import '../../../ai_assistant/presentation/pages/ai_assistant_page.dart';
import '../../../news/presentation/pages/news_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const MarketplacePage(),
    const AIAssistantPage(),
    const NewsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.surface,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.home),
            activeIcon: Icon(IconlyBroken.home),
            label: 'Басты бет',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.buy),
            activeIcon: Icon(IconlyBroken.buy),
            label: 'Маркетплейс',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.discovery),
            activeIcon: Icon(IconlyBroken.discovery),
            label: 'ИИ',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.paper),
            activeIcon: Icon(IconlyBroken.paper),
            label: 'Жаңалықтар',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBroken.profile),
            activeIcon: Icon(IconlyBroken.profile),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}
