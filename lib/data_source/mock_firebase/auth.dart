import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) {
  return MockFirebaseAuth();
}

@Riverpod(keepAlive: true)
Stream<User?> firebaseUser(FirebaseUserRef ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
}
