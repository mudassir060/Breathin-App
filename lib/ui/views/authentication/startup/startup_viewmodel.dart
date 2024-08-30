import 'package:breathin_app/app/app.locator.dart';
import 'package:breathin_app/app/app.router.dart';
import 'package:breathin_app/models/auth.dart';
import 'package:breathin_app/services/auth_service.dart';
import 'package:breathin_app/services/home_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  // ignore: unused_field
  final _homeService = locator<HomeService>();

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  UserModel? get userData => _authService.userData;

  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future runStartupLogic() async {
    // for (var i = 0; i < dumydata.length; i++) {
    //   await firestore.collection("breathin").add({
    //     "image": dumydata[i]["image"],
    //     "url": dumydata[i]["url"],
    //     "title": dumydata[i]["title"],
    //     "mood": dumydata[i]["mood"],
    //     "duration": dumydata[i]["duration"],
    //   });
    // }
    await Future.delayed(const Duration(seconds: 2));
    await _authService.initialize();
    getStarted();
  }

  // var dumydata = [
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=115CK-PiBfSvYzrmVOtb1m55AJxC684yO",
  //     "title": "Facilitating Emotional Recovery from Trauma",
  //     "mood": "Healing",
  //     "duration": "7:42"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1z-tnxRRPWHCFGMLRnWbdlPSvU9eGVP4K",
  //     "title": "Building Resilience and Emotional Recovery After Trauma",
  //     "mood": "Resilient",
  //     "duration": "8:03"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1-eVIEuzjq34eszQz25qZUR5GsS3d7r5n",
  //     "title": "Embracing the Inner Child",
  //     "mood": "Reflective",
  //     "duration": "4:55"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1c4oPuR05VbcXmFf3TBKmUnH237UzX9W-",
  //     "title": "Reclaiming Your Power",
  //     "mood": "Empowered",
  //     "duration": "6:00"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1wSZMYj-Sp049IhwXNasdPYgTAldIbxFr",
  //     "title": "Finding Calm in the Storm",
  //     "mood": "Calm",
  //     "duration": "7:35"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1ukHd6WtAnrHM-iRXtl-KpwfDWuj3c2WF",
  //     "title": "Promoting Emotional Healing and Resilience",
  //     "mood": "Healing",
  //     "duration": "9:13"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1ruWR5-SNjRyiRPWpqnWTPVHkHcLGBepd",
  //     "title": "Improving Emotional Control for Healing",
  //     "mood": "Focused",
  //     "duration": "9:48"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1e1_zkAnK30ePA0aFCJoHWlrhPw2-tgzy",
  //     "title": "Navigating Grief with Compassion",
  //     "mood": "Compassionate",
  //     "duration": "6:35"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1jmHNTToknflD82x6n-BMu1sZcmQGAKih",
  //     "title": "Finding Calm Amid Panic",
  //     "mood": "Calm",
  //     "duration": "7:00"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1ehJsiFdnOEZXCia_j-wl0B5w1WJIJt8c",
  //     "title": "Transforming Anger into Peace",
  //     "mood": "Peaceful",
  //     "duration": "5:55"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1e4I-a1OFnQveE7oJ5uhqIGy08Qe8IBXv",
  //     "title": "Enhancing Self Compassion and Facilitating Emotional Healing",
  //     "mood": "Compassionate",
  //     "duration": "10:31"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1jhS3jhTeAwKNPdazUyP1UGOjCHL249Kc",
  //     "title": "Cultivating Self-Kindness and Promoting Emotional Well-Being",
  //     "mood": "Kind",
  //     "duration": "9:59"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=13qW24Er6TWPXv2SzhbraM4p_011v32sU",
  //     "title": "Embracing Forgiveness",
  //     "mood": "Forgiving",
  //     "duration": "5:55"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=18fJwWYGlzheULE6ktxo8FV-MZuf0ETxS",
  //     "title": "Cultivating Inner Kindness",
  //     "mood": "Kind",
  //     "duration": "5:00"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1_b1lzVDweyDOsopUbcFpntQyhErXlpUo",
  //     "title": "Nurturing Self-Love",
  //     "mood": "Loving",
  //     "duration": "4:40"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1Ycn4BYc04LANxvWMme6bXN5RoSIiJtNQ",
  //     "title": "Enhancing Focus for Academic Success",
  //     "mood": "Focused",
  //     "duration": "8:52"
  //   },
  //   {
  //     "image": "https://picsum.photos/200",
  //     "url":
  //         "https://drive.usercontent.google.com/u/0/uc?id=1tvRjvJPjV0E3bCJDFDvP-VHMjfNLnYtP",
  //     "title": "Boosting Academic Performance",
  //     "mood": "Motivated",
  //     "duration": "8:25"
  //   }
  // ];

  getStarted() {
    if (userData?.uID != null) {
      _navigationService.replaceWithBottomNavigationBarView();
    }
  }

  replaceWithLoginView() {
    _navigationService.replaceWithLoginView();
  }
}
