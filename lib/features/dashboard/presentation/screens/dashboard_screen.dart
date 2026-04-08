import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:connectx_hr/features/dashboard/presentation/screens/widgets/custom_nav_bar.dart';
import 'package:connectx_hr/features/dashboard/presentation/screens/widgets/dash_board_header.dart';
import 'package:connectx_hr/features/dashboard/presentation/screens/widgets/qr_scan_card.dart';
import 'package:flutter/material.dart';

import 'widgets/activity_item.dart';
import 'widgets/ai_banner.dart';
import 'widgets/stat_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              const DashboardHeader(),
              const SizedBox(height: 24),

              // Stats Row
              const Row(
                children: [
                  Expanded(
                    child: StatCard(label: "ACTIVE\nSESSIONS", value: "12"),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: StatCard(label: "TOTAL\nSTUDENTS", value: "1.2k"),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: StatCard(label: "ATTEND.\n%", value: "94%"),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // AI Banner
              const AIBanner(),
              const SizedBox(height: 20),

              // QR Scan Card
              const QrScanCard(),
              const SizedBox(height: 32),

              // Recent Activity Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recent Activity",
                    style: TextStyle(
                      color: AppColors.onSurface,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "View All",
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                ],
              ),
              const ActivityItem(
                title: "Cloud Architecture",
                subtitle: "Lec Hall A • 10:30 AM",
                status: "ONGOING",
              ),
              const ActivityItem(
                title: "Python Fundamentals",
                subtitle: "Lab 04 • 09:00 AM",
                status: "COMPLETED",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
