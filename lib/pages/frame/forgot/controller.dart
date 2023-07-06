import 'package:chatty/common/widgets/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class ForgotController extends GetxController {
  final state = ForgotState();
  FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController? EmailEditingController = TextEditingController();

  ForgotController();

  handleEmailForgot() async {
    String emailAddress = state.email.value;
    if (emailAddress.isEmpty) {
      toastInfo(msg: "Email not empty!");
      return;
    }
    Get.focusScope?.unfocus();
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
      toastInfo(
          msg:
              "An email has been sent to your registered email. To activate your account, please open the link from the email.");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo(msg: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        toastInfo(msg: "The account already exists for that email.");
      }
    } catch (e) {}
  }

  @override
  void onReady() {
    super.onReady();
    FirebaseAuth.instance.authStateChanges().listen((User? user) {});
  }
}
