import 'dart:developer';
import 'package:breathin_app/models/auth.dart';
import 'package:breathin_app/services/share_preferances.dart';
import 'package:breathin_app/services/snak_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';

class AuthService with ListenableServiceMixin {
  UserModel? userData;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  // final _activityService = locator<ActivityService>();

  initialize() async {
    await updateUserData();
    notifyListeners();
  }

  FirebaseAuth auth = FirebaseAuth.instance;

  signUp(UserModel userData) async {
    try {
      UserCredential user = await auth.createUserWithEmailAndPassword(
          email: userData.email ?? "", password: userData.password ?? "");
      userData.uID = user.user!.uid;
      this.userData = userData;

      await firestore
          .collection("users")
          .doc(user.user!.uid)
          .set(userData.toJson());

      return "SignUp Successfully";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showErrorSnack('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showErrorSnack('The account already exists for that email.');
      } else {
        showErrorSnack(e.message);
      }
    } catch (e, s) {
      showErrorSnack(e.toString());
      log("=====>$s");
    }
  }

  loginNow(email, password) async {
    try {
      final UserCredential user = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      final DocumentSnapshot snapshot =
          await firestore.collection("users").doc(user.user?.uid).get();
      Map<String, dynamic> json = snapshot.data() as Map<String, dynamic>;
      userData = UserModel.fromJson(json);
      userData?.uID = user.user?.uid;
      sharedPrefWrite("uID", userData?.uID);
      return "login successfully";
    } on FirebaseAuthException catch (e) {
      showErrorSnack(e.message.toString());
    } catch (e, s) {
      showErrorSnack(e.toString());
      log("=====>$s");
    }
  }

  updateUserData() async {
    try {
      String? uID = await sharedPrefRead("uID");
      if (uID != null) {
        final DocumentSnapshot snapshot =
            await firestore.collection("users").doc(uID).get();
        Map<String, dynamic> json = snapshot.data() as Map<String, dynamic>;
        userData = UserModel.fromJson(json);
      }
    } catch (e) {
      showErrorSnack(e.toString());
    }
  }

  updateUserByMap(Map<String, dynamic> data) async {
    try {
      await firestore.collection("users").doc(userData?.uID).update(data);
      return "update successfully";
    } catch (e, s) {
      showErrorSnack(e.toString());
      log("=====>$s");
    }
  }
}
