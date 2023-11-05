import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data_source/mock_firebase/auth.dart';

part 'logged_in.g.dart';

@Riverpod(keepAlive: true)
bool loggedIn(LoggedInRef ref) {
  return ref.watch(firebaseUserProvider).value != null;
}
