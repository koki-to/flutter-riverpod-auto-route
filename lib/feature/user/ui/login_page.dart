import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'comporent/login_button.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 50,
          width: 160,
          child: LoginButton(),
        ),
      ),
    );
  }
}
