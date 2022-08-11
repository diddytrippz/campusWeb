import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CampusAfricaWebFirebaseUser {
  CampusAfricaWebFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

CampusAfricaWebFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CampusAfricaWebFirebaseUser> campusAfricaWebFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<CampusAfricaWebFirebaseUser>(
            (user) => currentUser = CampusAfricaWebFirebaseUser(user));
