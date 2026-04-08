import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  final String title, subtitle, status;
  const ActivityItem({
    required this.title,
    required this.subtitle,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isOngoing = status == "ONGOING";
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: AppColors.surfaceContainerHighest,
            child: Icon(
              Icons.psychology_outlined,
              color: AppColors.primary,
              size: 20,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.onSurface,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: AppColors.outline,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: isOngoing ? Colors.blue.withOpacity(0.1) : Colors.white10,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              status,
              style: TextStyle(
                color: isOngoing ? Colors.blue : AppColors.outline,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
