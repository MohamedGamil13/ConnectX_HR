import 'package:connectx_hr/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ConnectxLogo extends StatelessWidget {
  const ConnectxLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            image: AssetImage(AppConstants.connectXLogo),
            fit: .cover,
          ),
        ),
      ),
    );
  }
}
