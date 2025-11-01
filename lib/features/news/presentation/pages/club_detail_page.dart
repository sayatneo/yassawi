import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class ClubDetailPage extends StatelessWidget {
  final String clubName;
  final IconData icon;
  final Color color;

  const ClubDetailPage({
    super.key,
    required this.clubName,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with gradient
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(clubName),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [color, color.withOpacity(0.7)],
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(icon, size: 60, color: color),
                  ),
                ),
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Stats Row
                  Row(
                    children: [
                      Expanded(
                        child: _StatCard(
                          icon: Icons.people,
                          label: 'Мүшелер',
                          value: '127',
                          color: color,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          icon: Icons.event,
                          label: 'Оқиғалар',
                          value: '24',
                          color: color,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _StatCard(
                          icon: Icons.star,
                          label: 'Рейтинг',
                          value: '4.8',
                          color: color,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // About Section
                  Text(
                    'Клуб туралы',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Бұл клуб студенттерге өз қызығушылықтарын дамытуға және жаңа дағдылар игеруге мүмкіндік береді. Біз бірге жобалар жасаймыз, тәжірибе алмасамыз және әртүрлі оқиғалар ұйымдастырамыз.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 24),

                  // Features
                  Text(
                    'Артықшылықтар',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 12),
                  _FeatureItem(
                    icon: Icons.school,
                    title: 'Тегін оқыту',
                    description: 'Сарапшылардан тегін сабақтар',
                  ),
                  _FeatureItem(
                    icon: Icons.work,
                    title: 'Жоба тәжірибесі',
                    description: 'Нақты жобаларда жұмыс тәжірибесі',
                  ),
                  _FeatureItem(
                    icon: Icons.card_membership,
                    title: 'Сертификаттар',
                    description: 'Аяқталған курстарға сертификат',
                  ),
                  _FeatureItem(
                    icon: Icons.groups,
                    title: 'Қауымдастық',
                    description: 'Ұқсас адамдармен танысу',
                  ),
                  const SizedBox(height: 24),

                  // Schedule
                  Text(
                    'Кездесулер кестесі',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 12),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          _ScheduleItem(
                            day: 'Сейсенбі',
                            time: '18:00 - 20:00',
                            location: '302 аудитория',
                          ),
                          const Divider(),
                          _ScheduleItem(
                            day: 'Жұма',
                            time: '17:00 - 19:00',
                            location: '405 аудитория',
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Recent Events
                  Text(
                    'Соңғы оқиғалар',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 12),
                  _EventCard(
                    title: 'Hackathon 2025',
                    date: '15 қараша 2025',
                    imageColor: color,
                  ),
                  const SizedBox(height: 12),
                  _EventCard(
                    title: 'Workshop: Flutter',
                    date: '22 қараша 2025',
                    imageColor: color,
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),

      // Apply Button
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, -5),
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () {
              _showApplicationDialog(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              minimumSize: const Size(double.infinity, 56),
            ),
            child: const Text('Өтініш беру'),
          ),
        ),
      ),
    );
  }

  void _showApplicationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Өтініш беру'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('$clubName клубына қосылғыңыз келе ме?'),
            const SizedBox(height: 16),
            const Text(
              'Өтінішіңіз қаралып, 24 сағат ішінде жауап беріледі.',
              style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Болдырмау'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Өтініш жіберілді! ✅'),
                  backgroundColor: Colors.green,
                ),
              );
            },
            child: const Text('Жіберу'),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color color;

  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 8),
            Text(
              value,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: color,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureItem({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: AppColors.primary),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ScheduleItem extends StatelessWidget {
  final String day;
  final String time;
  final String location;

  const _ScheduleItem({
    required this.day,
    required this.time,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                day,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 16, color: AppColors.textSecondary),
                  const SizedBox(width: 4),
                  Text(time, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ],
          ),
        ),
        Row(
          children: [
            const Icon(Icons.location_on, size: 16, color: AppColors.textSecondary),
            const SizedBox(width: 4),
            Text(location, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }
}

class _EventCard extends StatelessWidget {
  final String title;
  final String date;
  final Color imageColor;

  const _EventCard({
    required this.title,
    required this.date,
    required this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: imageColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(Icons.event, color: imageColor),
        ),
        title: Text(title),
        subtitle: Text(date),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}

