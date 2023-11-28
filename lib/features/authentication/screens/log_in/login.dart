import 'package:flutter/material.dart';

import 'package:t_store/features/authentication/screens/log_in/widgets/login_body.dart';
import 'package:t_store/features/authentication/screens/log_in/widgets/login_header.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
