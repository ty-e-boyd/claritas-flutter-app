import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get user => _auth.currentUser;

  //SIGN UP METHOD
  Future signUp({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN IN METHOD
  Future signIn({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut();

    print('signout');
  }
}

// CALL THIS ON THE ACTUAL BUTTON
// AuthenticationHelper()
//     .signUp(email: email, password: password)
//     .then((result) {
// if (result == null) {
// Navigator.pushReplacement(context,
// MaterialPageRoute(builder: (context) => Home()));
// } else {
// Scaffold.of(context).showSnackBar(SnackBar(
// content: Text(
// result,
// style: TextStyle(fontSize: 16),
// ),
// ));
// }
// });
