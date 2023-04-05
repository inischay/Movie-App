import 'package:flutter/material.dart';

import '../../components/genre_card.dart';
import '../../contraints.dart';

class Genres extends StatelessWidget {
  const Genres({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Actions",
      "Crime",
      "Comedy",
      "Drama",
      "Horror",
      "Animations",
    ];
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) => GenreCard(genre: genres[index])),
    );
  }
}
