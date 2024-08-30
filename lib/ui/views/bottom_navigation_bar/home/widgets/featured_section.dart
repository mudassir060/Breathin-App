import 'package:breathin_app/models/breathin.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/home_view.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FeaturedSection extends ViewModelWidget<HomeViewModel> {
  const FeaturedSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heading("Featured", "See All"),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: viewModel.breathin.length,
            itemBuilder: (context, index) {
              BreathinModel breath = viewModel.breathin[index];
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        viewModel.navigateToMusicPlayerView(index);
                      },
                      child: Container(
                        width: 120,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: NetworkImage(breath.image ?? ""),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                              viewModel.favourite(breath.docId ?? "", viewModel.isFavourite(breath.favourite ?? []));
                            },
                            icon: viewModel.isFavourite(breath.favourite ?? [])
                                ? const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: 120,
                      child: Text(
                        maxLines: 1,
                        breath.title ?? "",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                        '${(breath.duration ?? "00").split(":").first} mins • ${breath.mood}'),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
