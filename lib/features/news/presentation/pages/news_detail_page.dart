import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class NewsDetailPage extends StatelessWidget {
  final String title;
  final String category;
  final String date;
  final String imageUrl;

  const NewsDetailPage({
    super.key,
    required this.title,
    required this.category,
    required this.date,
    this.imageUrl = '',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with Image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    color: AppColors.divider,
                    child: Center(
                      child: Icon(
                        Icons.image,
                        size: 80,
                        color: AppColors.textSecondary.withOpacity(0.5),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.bookmark_border),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Category and Date
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          category,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        date,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Title
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 16),

                  // Author Info
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.divider,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.person, color: AppColors.textSecondary),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ақпарат қызметі',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Университет хабаршысы',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Stats
                  Row(
                    children: [
                      Icon(Icons.visibility, size: 20, color: AppColors.textSecondary),
                      const SizedBox(width: 4),
                      Text('1,234', style: Theme.of(context).textTheme.bodyMedium),
                      const SizedBox(width: 24),
                      Icon(Icons.favorite_border, size: 20, color: AppColors.textSecondary),
                      const SizedBox(width: 4),
                      Text('89', style: Theme.of(context).textTheme.bodyMedium),
                      const SizedBox(width: 24),
                      Icon(Icons.comment, size: 20, color: AppColors.textSecondary),
                      const SizedBox(width: 4),
                      Text('23', style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  const SizedBox(height: 24),

                  const Divider(),
                  const SizedBox(height: 24),

                  // Content
                  Text(
                    'Ахмет Ясауи атындағы Халықаралық қазақ-түрік университетінде жаңа оқу жылы салтанатты түрде ашылды. Іс-шараға университет басшылығы, оқытушылар мен студенттер қатысты.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          height: 1.6,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Университет ректоры өз сөзінде жаңа оқу жылының табысты болуын тіледі және студенттерге білім алудағы жетістіктер мен жаңа мүмкіндіктер туралы айтып берді.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          height: 1.6,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Бұл оқу жылында университет студенттері үшін көптеген жаңа бағдарламалар мен жобалар іске қосылады. Олардың ішінде:',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          height: 1.6,
                        ),
                  ),
                  const SizedBox(height: 16),

                  // List items
                  _BulletPoint(text: 'Жаңа зертханалар мен оқу орталықтары'),
                  _BulletPoint(text: 'Халықаралық алмасу бағдарламалары'),
                  _BulletPoint(text: 'Стартап инкубатор орталығы'),
                  _BulletPoint(text: 'Спорт және мәдени іс-шаралар'),

                  const SizedBox(height: 24),

                  // Quote
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                      border: Border(
                        left: BorderSide(color: AppColors.primary, width: 4),
                      ),
                    ),
                    child: Text(
                      '"Біздің университеттің басты мақсаты - жас ұрпаққа сапалы білім беру және олардың болашақ мансабына қолдау көрсету"',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontStyle: FontStyle.italic,
                            color: AppColors.primary,
                          ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  Text(
                    'Іс-шара соңында студенттерге жаңа оқу жылының табысты болуын тілейтін концерт бағдарламасы ұсынылды.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          height: 1.6,
                        ),
                  ),

                  const SizedBox(height: 32),

                  // Tags
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _TagChip(label: '#университет'),
                      _TagChip(label: '#білім'),
                      _TagChip(label: '#студент'),
                      _TagChip(label: '#жаңалық'),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // Related News
                  Text(
                    'Ұқсас жаңалықтар',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 16),

                  _RelatedNewsCard(
                    title: 'Студенттер халықаралық олимпиадада жеңіске жетті',
                    date: '25 қазан 2025',
                  ),
                  const SizedBox(height: 12),
                  _RelatedNewsCard(
                    title: 'Университетте жаңа ғылыми зертхана ашылды',
                    date: '22 қазан 2025',
                  ),

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BulletPoint extends StatelessWidget {
  final String text;

  const _BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 6,
            height: 6,
            margin: const EdgeInsets.only(top: 8, right: 12),
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.6),
            ),
          ),
        ],
      ),
    );
  }
}

class _TagChip extends StatelessWidget {
  final String label;

  const _TagChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      backgroundColor: AppColors.background,
      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.primary,
          ),
    );
  }
}

class _RelatedNewsCard extends StatelessWidget {
  final String title;
  final String date;

  const _RelatedNewsCard({required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: AppColors.divider,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            Icons.image,
            color: AppColors.textSecondary.withOpacity(0.5),
          ),
        ),
        title: Text(
          title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(date),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}

