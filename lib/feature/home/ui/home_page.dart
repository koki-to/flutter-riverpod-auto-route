import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../settings/component/navigate_settings_button.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        actions: const [NavigateSettingsButton()],
      ),
      body: const Center(
        child: Text('ようこそ'),
      ),
    );
  }
}
