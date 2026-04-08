import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AiEngineStatus extends StatelessWidget {
  const AiEngineStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary.withOpacity(0.2)),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.auto_awesome, color: AppColors.primary, size: 14),
          SizedBox(width: 8),
          Text(
            "AI ENGINE ACTIVE",
            style: TextStyle(
              color: AppColors.onSurface,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
