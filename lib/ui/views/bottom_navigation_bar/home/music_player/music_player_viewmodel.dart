import 'dart:developer';
import 'package:breathin_app/app/app.locator.dart';
import 'package:breathin_app/models/breathin.dart';
import 'package:just_audio/just_audio.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/animation.dart';
import 'package:stacked_services/stacked_services.dart';

class MusicPlayerViewModel extends BaseViewModel {
  final AudioPlayer _audioPlayer = AudioPlayer();
  late AnimationController _playPauseAnimationController;
  final _navigationService = locator<NavigationService>();

  bool _isPlaying = false;
  Duration _currentPosition = Duration.zero;
  Duration _totalDuration = Duration.zero;
  List<BreathinModel> breathin = [];
  String _currentTrack = "";
  String _currentArtist = "";
  int selectedIndex = 0;

  bool get isPlaying => _isPlaying;
  Duration get currentPosition => _currentPosition;
  Duration get totalDuration => _totalDuration;
  String get currentTrack => _currentTrack;
  String get currentArtist => _currentArtist;
  AnimationController get playPauseAnimationController =>
      _playPauseAnimationController;

  void initialize(TickerProvider vsync) {
    _playPauseAnimationController = AnimationController(
      vsync: vsync,
      duration: const Duration(seconds: 5),
    );
  }

  void onViewModelReady(int selectedIndex, List<BreathinModel> breathin) async {
    this.breathin = breathin;
    this.selectedIndex = selectedIndex;
    _currentTrack = breathin[selectedIndex].title ?? "";
    _currentArtist = breathin[selectedIndex].mood ?? "";
    notifyListeners();
    await _initializePlayer(breathin[selectedIndex]);
  }

  Future<void> _initializePlayer(BreathinModel breath) async {
    try {
      await _audioPlayer.setUrl(breath.url ?? "");
      _totalDuration = _audioPlayer.duration ?? Duration.zero;
      notifyListeners();

      _audioPlayer.positionStream.listen((position) {
        _currentPosition = position;
        notifyListeners();
      });

      _audioPlayer.playerStateStream.listen((state) {
        _isPlaying = state.playing;
        notifyListeners();
        if (_isPlaying) {
          _playPauseAnimationController.repeat();
        } else {
          _playPauseAnimationController.stop();
        }
      });
    } catch (e) {
      log('Error initializing audio player: $e');
    }
  }

  void playPause() {
    if (_isPlaying) {
      _audioPlayer.pause();
      _playPauseAnimationController.stop();
    } else {
      _audioPlayer.play();
      _playPauseAnimationController.repeat();
    }
  }

  Future<void> nextTrack() async {
    if (selectedIndex < breathin.length - 1) {
      selectedIndex = selectedIndex + 1;
    }
    _currentTrack = breathin[selectedIndex].title ?? "";
    _currentArtist = breathin[selectedIndex].mood ?? "";
    _isPlaying = true;
    await _initializePlayer(breathin[selectedIndex]);
    _audioPlayer.play();
    _playPauseAnimationController.repeat();
    notifyListeners();
  }

  Future<void> previousTrack() async {
    if (selectedIndex > 0) {
      selectedIndex = selectedIndex - 1;
    }
    _currentTrack = breathin[selectedIndex].title ?? "";
    _currentArtist = breathin[selectedIndex].mood ?? "";
    _isPlaying = true;
    await _initializePlayer(breathin[selectedIndex]);
    _audioPlayer.play();
    _playPauseAnimationController.repeat();
    notifyListeners();
  }

  void seekTo(Duration position) {
    _audioPlayer.seek(position);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    _playPauseAnimationController.dispose();
    super.dispose();
  }
  back(){
    _navigationService.back();
  }
}
