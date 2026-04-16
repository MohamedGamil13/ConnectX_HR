import 'package:connectx_hr/core/widgets/connectx_logo.dart';
import 'package:connectx_hr/core/widgets/custom_text.dart';
import 'package:connectx_hr/features/auth/presentation/screens/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';

class SignInScreenBody extends StatelessWidget {
  const SignInScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              _HeaderSection(),
              SizedBox(height: 40),
              FormSection(),
            ],
          ),
        ),
      ),
    );
  }
}

// ================= HEADER SECTION =================
class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ConnectxLogo(),
        SizedBox(height: 8),
        Center(child: ShimmeringConnectXText()),
      ],
    );
  }
}
