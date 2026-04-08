import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final String name, id, status;
  const StudentCard({
    required this.name,
    required this.id,
    required this.status,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color statusColor;
    switch (status) {
      case "SYNCED":
        statusColor = Colors.cyan;
        break;
      case "PENDING":
        statusColor = Colors.orangeAccent;
        break;
      case "ERROR":
        statusColor = AppColors.error;
        break;
      default:
        statusColor = AppColors.outline;
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(
              'https://tse3.mm.bing.net/th/id/OIP.bEkijStyLWnAiTO3jkpaYAHaJY?rs=1&pid=ImgDetMain&o=7&rm=3',
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: AppColors.onSurface,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "ID: $id",
                  style: const TextStyle(
                    color: AppColors.outline,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(radius: 3, backgroundColor: statusColor),
                    const SizedBox(width: 4),
                    Text(
                      status,
                      style: TextStyle(
                        color: statusColor,
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.outline,
                size: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
