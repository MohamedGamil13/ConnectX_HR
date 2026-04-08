import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class QrScanCard extends StatelessWidget {
  const QrScanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow, // لون أغمق قليلاً ليعطي عمق
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: AppColors.outlineVariant.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // QR Icon Container
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.surfaceContainerHigh,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.qr_code_scanner_rounded,
              size: 64,
              color: AppColors.primary, // لون بنفسجي فاتح (D2BBFF)
            ),
          ),
          const SizedBox(height: 24),

          // Title
          const Text(
            "Scan QR Code",
            style: TextStyle(
              color: AppColors.onSurface,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 8),

          // Subtitle
          const Text(
            "Verify student attendance instantly",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.outline,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
