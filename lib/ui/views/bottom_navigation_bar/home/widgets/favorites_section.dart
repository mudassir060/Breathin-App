import 'package:breathin_app/models/breathin.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/home_view.dart';
import 'package:breathin_app/ui/views/bottom_navigation_bar/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FavoritesSection extends ViewModelWidget<HomeViewModel> {
  const FavoritesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    final favoriteItems = viewModel.breathin
        .where((breath) => viewModel.isFavourite(breath.favourite ?? []))
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        heading("Favorites", "See All"),
        favoriteItems.isNotEmpty
            ? SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: favoriteItems.length,
                  itemBuilder: (context, index) {
                    BreathinModel breath = favoriteItems[index];
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
                                    viewModel.favourite(
                                        breath.docId ?? "", true);
                                  },
                                  icon: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: 120,
                            child: Text(
                              breath.title ?? "",
                              maxLines: 1,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                              '${(breath.duration ?? "00").split(":").first} mins • ${breath.mood}'),
                        ],
                      ),
                    );
                  },
                ),
              )
            : const Center(child: Text("No items added to favorites"))
      ],
    );
  }
}