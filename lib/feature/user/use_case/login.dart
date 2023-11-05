import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data_source/mock_firebase/auth.dart';
import '../../../router/router.dart';
import '../../../util/logger.dart';

part 'login.g.dart';

@riverpod
class LoginUseCase extends _$LoginUseCase {
  @override
  FutureOr<void> build() {}

  Future<void> invoke() async {
    if (state.isLoading) {
      return;
    }
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final auth = ref.read(firebaseAuthProvider);
      final credential = await auth.signInAnonymously();
      final user = credential.user;
      assert(user != null);
      logger.i(user);
      ref.invalidate(appRouterProvider);
    });
  }
}
