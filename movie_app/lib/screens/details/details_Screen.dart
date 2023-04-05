import 'package:flutter/material.dart';

import 'package:movie_app/models/models.dart';
import 'package:movie_app/screens/details/components/detail_body.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBody(
        movie: movie,
      ),
    );
  }
}
