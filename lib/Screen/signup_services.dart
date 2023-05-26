import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quiz_app/Screen/login_form.dart';

signIn(String email, String password, String gender, String username,
    String phone, String fathername, String cnic) {
  User? user = FirebaseAuth.instance.currentUser;
  FirebaseFirestore.instance.collection("helloWorld").doc("asad").set({
    'username': username,
    'Father name': fathername,
    'CNIC Number': cnic,
    'Contact Number': phone,
    'Gender': gender,
    'Email': email,
    'Password': password,
    'user': user
  }).then((value) {
    print("user Authenticate");
    Get.to(() => LoginScreen());
  });
}
