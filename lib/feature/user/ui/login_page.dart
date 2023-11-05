import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../home/ui/home_page.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const HomePage(),
              ),
            );
          },
          child: const Text('ログイン'),
        ),
      ),
    );
  }
}
