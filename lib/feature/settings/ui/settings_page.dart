import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../user/ui/comporent/logout_button.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定'),
      ),
      body: const Center(
        child: LogoutButton(),
      ),
    );
  }
}
