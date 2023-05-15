import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

signIn(Email, Eassword) {
  User? user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore.instance
      .collection("helloWorld")
      .doc("waqas")
      .set({'Email': Email, 'Password': Eassword}).then(
          (value) => print("user added"));
}
