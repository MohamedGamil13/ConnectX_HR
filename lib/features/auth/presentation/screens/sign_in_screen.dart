import 'package:connectx_hr/core/theme/app_colors.dart';
import 'package:connectx_hr/features/auth/presentation/cubits/auth_cubit.dart';
import 'package:connectx_hr/features/auth/presentation/screens/widgets/sign_in_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: BlocProvider(
        create: (BuildContext context) => AuthCubit(),
        child: const SignInScreenBody(),
      ),
    );
  }
}
