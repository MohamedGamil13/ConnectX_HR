import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const TextField(
        style: TextStyle(color: AppColors.onSurface),
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: AppColors.outline),
          hintText: "Search student by name or ID...",
          hintStyle: TextStyle(color: AppColors.outline, fontSize: 14),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
