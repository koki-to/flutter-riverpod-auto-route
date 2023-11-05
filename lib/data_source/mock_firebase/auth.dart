import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

@riverpod
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) {
  return MockFirebaseAuth();
}

@riverpod
Stream<User?> firebaseUser(FirebaseUserRef ref) {
  return ref.watch(firebaseAuthProvider).userChanges();
}
