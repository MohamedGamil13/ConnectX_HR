import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:connectx_hr/features/dashboard/presentation/screens/widgets/dash_board_header.dart';
import 'package:connectx_hr/features/sessions/presentation/screens/widgets/mini_state_card.dart';
import 'package:connectx_hr/features/sessions/presentation/screens/widgets/search_bar_widget.dart';
import 'package:connectx_hr/features/sessions/presentation/screens/widgets/student_card.dart';
import 'package:connectx_hr/features/sessions/presentation/screens/widgets/sync_button.dart';
import 'package:flutter/material.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Padding(padding: EdgeInsets.all(20.0), child: DashboardHeader()),

            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "STUDENTS",
                              style: TextStyle(
                                color: AppColors.onSurface,
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Managing talent database",
                              style: TextStyle(
                                color: AppColors.outline,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        SyncButton(),
                      ],
                    ),
                    SizedBox(height: 24),

                    // Search Bar
                    SearchBarWidget(),
                    SizedBox(height: 24),

                    // Stats Summary
                    Row(
                      children: [
                        Expanded(
                          child: MiniStatCard(label: "ACTIVE", value: "1,284"),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: MiniStatCard(
                            label: "SYNC HEALTH",
                            value: "98%",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),

                    // Students List
                    StudentCard(
                      name: "Elena Rodriguez",
                      id: "CX-2024-8621",
                      status: "SYNCED",
                    ),
                    StudentCard(
                      name: "Marcus Chen",
                      id: "CX-2024-9104",
                      status: "PENDING",
                    ),
                    StudentCard(
                      name: "Aisha Khan",
                      id: "CX-2024-7732",
                      status: "SYNCED",
                    ),
                    StudentCard(
                      name: "Jordan Smith",
                      id: "CX-2024-1149",
                      status: "ERROR",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
