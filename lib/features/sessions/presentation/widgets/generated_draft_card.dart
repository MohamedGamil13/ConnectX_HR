import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:connectx_hr/core/widgets/custom_textfield.dart';
import 'package:connectx_hr/features/auth/presentation/screens/widgets/auth_button.dart';
import 'package:flutter/material.dart';

class GeneratedDraftCard extends StatelessWidget {
  const GeneratedDraftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surfaceContainerLow,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFieldLabel("SESSION TITLE"),
          const CustomTextField(
            hintText: "Design Excellence & Brand In",
            suffixIcon: Icon(Icons.edit_note, color: AppColors.primary),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFieldLabel("TIME"),
                    const CustomTextField(
                      hintText: "2:00 PM",
                      suffixIcon: Icon(Icons.access_time, size: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildFieldLabel("DURATION"),
                    const CustomTextField(
                      hintText: "60 min",
                      suffixIcon: Icon(Icons.hourglass_empty, size: 18),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildFieldLabel("LOCATION"),
          const CustomTextField(
            hintText: "The Glass Room - Level 4",
            suffixIcon: Icon(Icons.location_on_outlined, size: 18),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: AppColors.outline),
                  ),
                ),
              ),
              Expanded(
                child: AuthButton(text: "Save Session", onPressed: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFieldLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(
        label,
        style: const TextStyle(
          color: AppColors.outline,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
