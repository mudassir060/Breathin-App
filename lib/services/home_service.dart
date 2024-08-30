import 'dart:developer';

import 'package:breathin_app/app/app.locator.dart';
import 'package:breathin_app/models/auth.dart';
import 'package:breathin_app/models/breathin.dart';
import 'package:breathin_app/services/auth_service.dart';
import 'package:breathin_app/services/snak_bar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

class HomeService with ListenableServiceMixin {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final _authService = locator<AuthService>();

  UserModel? get userData => _authService.userData;

  List<BreathinModel> breathin = [];

  HomeService() {
    listenToBreathin();
  }

  void listenToBreathin() {
    try {
      firestore.collection('breathin').snapshots().listen((event) {
        breathin.clear();
        for (var item in event.docs) {
          breathin.add(BreathinModel.fromJson(item.data(), item.id));
        }
        notifyListeners();
        log('Breathin list updated. Current length: ${breathin.length}');
      });
    } catch (e) {
      log('Error in listenToBreathin: ${e.toString()}');
      showErrorSnack(e);
    }
  }

  addToFavourite(String docId) async {
    await firestore.collection('breathin').doc(docId).update({
      'favourite': FieldValue.arrayUnion([userData?.uID]),
    });
  }

  removeToFavourite(String docId) async {
    await firestore.collection('breathin').doc(docId).update({
      'favourite': FieldValue.arrayRemove([userData?.uID]),
    });
  }
}
