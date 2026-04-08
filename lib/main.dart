import 'package:connectx_hr/core/theme/app_theme.dart';
import 'package:connectx_hr/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:connectx_hr/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ConnectXReg());
}

class ConnectXReg extends StatelessWidget {
  const ConnectXReg({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.dark,
      title: "ConnectX Registration System",
      debugShowCheckedModeBanner: false,
      home: const SignInScreen(),
    );
  }
}
