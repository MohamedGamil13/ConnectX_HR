import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:connectx_hr/core/widgets/custom_textfield.dart';
import 'package:connectx_hr/features/auth/presentation/screens/widgets/auth_button.dart';
import 'package:connectx_hr/features/dashboard/presentation/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class FormSection extends StatelessWidget {
  const FormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "EMAIL ADDRESS",
          style: TextStyle(
            color: AppColors.onSurfaceVariant,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const CustomTextField(hintText: "admin@connectx.ai"),

        const SizedBox(height: 20),

        const Text(
          "PASSWORD",
          style: TextStyle(
            color: AppColors.onSurfaceVariant,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const CustomTextField(
          hintText: "••••••••",
          isPassword: true,
          suffixIcon: Icon(Icons.visibility_outlined, color: AppColors.outline),
        ),

        const SizedBox(height: 10),

        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "FORGOT ACCESS?",
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(height: 35),

        AuthButton(
          text: "Authenticate",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()),
            );
          },
        ),
      ],
    );
  }
}
