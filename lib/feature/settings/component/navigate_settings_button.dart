import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../router/router.dart';

class NavigateSettingsButton extends ConsumerWidget {
  const NavigateSettingsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () => context.navigateTo(const SettingsRoute()),
      icon: const Icon(Icons.settings),
    );
  }
}
