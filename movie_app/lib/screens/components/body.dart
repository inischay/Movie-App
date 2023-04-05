import 'package:flutter/material.dart';
import 'package:movie_app/contraints.dart';

import 'categories.dart';
import 'genres.dart';
import 'movie_carasouel.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          CategoryList(),
          Genres(),
          SizedBox(
            height: kDefaultPadding,
          ),
          MovieCard()
        ],
      ),
    );
  }
}
