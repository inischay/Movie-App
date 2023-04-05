import 'package:flutter/material.dart';

import 'package:movie_app/contraints.dart';

import 'package:movie_app/models/models.dart';

import '../../components/genres.dart';
import 'backDrop_rating.dart';
import 'cast_and_crew.dart';

import 'title_durationandFab.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackDropRating(size: size, movie: movie),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          TitileDurationAndFab(movie: movie),
          const Genres(),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2, horizontal: kDefaultPadding),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: const TextStyle(color: Color(0xFF737599)),
            ),
          ),
          CastAndCrew(
            cast: movie.cast,
          )
        ],
      ),
    );
  }
}
