import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class Agent360FirebaseUser {
  Agent360FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Agent360FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Agent360FirebaseUser> agent360FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Agent360FirebaseUser>(
      (user) {
        currentUser = Agent360FirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
