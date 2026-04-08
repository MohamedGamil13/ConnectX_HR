import 'package:connectx_hr/core/widgets/connectx_logo.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 10,
          children: [
            ConnectxLogo(),
            Text('ConnectX', style: TextStyle(fontSize: 40)),
          ],
        ),
      ),
    );
  }
}
