import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmeringConnectXText extends StatelessWidget {
  const ShimmeringConnectXText({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.onSurface,
      highlightColor: AppColors.primary,
      period: const Duration(seconds: 4),
      child: const Text(
        'ConnectX',
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w900,
          letterSpacing: -1.0,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
