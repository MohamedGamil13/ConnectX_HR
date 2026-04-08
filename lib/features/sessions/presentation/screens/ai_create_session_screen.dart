import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:connectx_hr/features/dashboard/presentation/screens/widgets/dash_board_header.dart';
import 'package:connectx_hr/features/sessions/presentation/screens/students_screen.dart';
import 'package:connectx_hr/features/sessions/presentation/screens/widgets/ai_engine_status.dart';
import 'package:connectx_hr/features/sessions/presentation/screens/widgets/ai_input_field.dart';
import 'package:connectx_hr/features/sessions/presentation/screens/widgets/generated_draft_card.dart';
import 'package:flutter/material.dart';

class AICreateSessionScreen extends StatelessWidget {
  const AICreateSessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const DashboardHeader(),
              const SizedBox(height: 30),

              const AiEngineStatus(),
              const SizedBox(height: 16),

              const Text(
                "Create Session",
                style: TextStyle(
                  color: AppColors.onSurface,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Draft HR events, training, or workshops in seconds with AI.",
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.outline, fontSize: 14),
              ),
              const SizedBox(height: 32),
              const AiInputField(),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "GENERATED DRAFT",
                    style: TextStyle(
                      color: AppColors.outline,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceContainerHigh,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudentsScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "98% Match",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const GeneratedDraftCard(),
            ],
          ),
        ),
      ),
    );
  }
}
