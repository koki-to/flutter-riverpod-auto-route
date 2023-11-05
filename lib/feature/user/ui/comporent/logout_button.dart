import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../use_case/logout.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final useCaseState = ref.watch(logoutUseCaseProvider);

    return useCaseState.isLoading
        ? const FilledButton(
            onPressed: null,
            child: SizedBox.square(
              dimension: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
              ),
            ),
          )
        : FilledButton(
            onPressed: () async =>
                ref.read(logoutUseCaseProvider.notifier).invoke(),
            child: const Text('ログアウト'),
          );
  }
}
