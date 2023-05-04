import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
Future<User?> signWithGoogle() async {
  final GoogleSignInAccount? signInAccount = await googleSignIn.signIn();
}
