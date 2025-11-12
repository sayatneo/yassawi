import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class StoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final bool isAddStory;

  const StoryItem({
    super.key,
    required this.imageUrl,
    required this.title,
    this.isAddStory = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,

            child:
                Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Placeholder(),
                    ),
          ),
        ],
      ),
    );
  }
}
