import 'package:connectx_hr/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ConnectXReg());
}

class ConnectXReg extends StatelessWidget {
  const ConnectXReg({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ConnectX Registration System",
      debugShowCheckedModeBanner: false,
    );
  }
}
