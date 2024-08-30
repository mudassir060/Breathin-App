import 'package:breathin_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'music_player_viewmodel.dart';

class PlayPauseAnimationWidget extends StatefulWidget {
  final MusicPlayerViewModel viewModel;
  final VoidCallback onTap;

  const PlayPauseAnimationWidget({
    Key? key,
    required this.viewModel,
    required this.onTap,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PlayPauseAnimationWidgetState createState() =>
      _PlayPauseAnimationWidgetState();
}

class _PlayPauseAnimationWidgetState extends State<PlayPauseAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _playPauseAnimationController;

  @override
  void initState() {
    super.initState();
    _playPauseAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), 
    );
    if (widget.viewModel.isPlaying) {
      _playPauseAnimationController.repeat();
    }
  }

  @override
  void didUpdateWidget(covariant PlayPauseAnimationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.viewModel.isPlaying) {
      _playPauseAnimationController.repeat();
    } else {
      _playPauseAnimationController.stop();
    }
  }

  @override
  void dispose() {
    _playPauseAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedBuilder(
        animation: _playPauseAnimationController,
        builder: (context, child) {
          return Transform.rotate(
            angle: _playPauseAnimationController.value * 6.3,
            child: child,
          );
        },
        child: CircleAvatar(
          radius: 140,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage(Assets.images.player.path),),
      ),
    );
  }
}
