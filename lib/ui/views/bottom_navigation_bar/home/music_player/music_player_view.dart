import 'package:breathin_app/gen/assets.gen.dart';
import 'package:breathin_app/models/breathin.dart';
import 'package:breathin_app/ui/common/app_colors.dart';
import 'package:breathin_app/ui/common/ui_helpers.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/music_player/player.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'music_player_viewmodel.dart';

class MusicPlayerView extends StackedView<MusicPlayerViewModel> {
  final int selectedIndex;
  final List<BreathinModel> breathin;

  const MusicPlayerView({
    Key? key,
    required this.selectedIndex,
    required this.breathin,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MusicPlayerViewModel viewModel,
    Widget? child,
  ) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.musicBackground.path),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PlayPauseAnimationWidget(
                    viewModel: viewModel,
                    onTap: viewModel.playPause,
                  ),
                  verticalSpaceMedium,
                  Text(
                    viewModel.currentTrack,
                    maxLines: 1,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpaceSmall,
                  Text(
                    viewModel.currentArtist,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  verticalSpaceMedium,
                  Slider(
                    activeColor: kcPrimaryColor,
                    inactiveColor: kcPrimaryColorLight,
                    value: viewModel.currentPosition.inSeconds.toDouble(),
                    min: 0.0,
                    max: viewModel.totalDuration.inSeconds.toDouble(),
                    onChanged: (value) {
                      viewModel.seekTo(Duration(seconds: value.toInt()));
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.skip_previous,
                          color: kcPrimaryColor,
                        ),
                        onPressed: viewModel.previousTrack,
                      ),
                      IconButton(
                        icon: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Icon(
                            color: kcPrimaryColor,
                            size: 32,
                            viewModel.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                          ),
                        ),
                        onPressed: viewModel.playPause,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.skip_next,
                          color: kcPrimaryColor,
                        ),
                        onPressed: viewModel.nextTrack,
                      ),
                    ],
                  ),
                  verticalSpaceLarge,
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: GestureDetector(
               onTap: viewModel.back,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: kcVeryLightGrey),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Icon(Icons.arrow_back_ios_new),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void onViewModelReady(MusicPlayerViewModel viewModel) {
    viewModel.onViewModelReady(selectedIndex, breathin);
    super.onViewModelReady(viewModel);
  }

  @override
  MusicPlayerViewModel viewModelBuilder(BuildContext context) =>
      MusicPlayerViewModel();
}
