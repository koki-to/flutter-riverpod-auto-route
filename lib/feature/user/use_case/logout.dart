import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data_source/mock_firebase/auth.dart';
import '../../../router/router.dart';

part 'logout.g.dart';

@riverpod
class LogoutUseCase extends _$LogoutUseCase {
  @override
  FutureOr<void> build() {}

  Future<void> invoke() async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await Future<void>.delayed(const Duration(seconds: 3));
      final auth = ref.read(firebaseAuthProvider);
      await auth.signOut();
      ref.invalidate(appRouterProvider);
    });
  }
}
