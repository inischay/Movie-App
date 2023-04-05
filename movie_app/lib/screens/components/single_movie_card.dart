import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/screens/details/details_Screen.dart';

import '../../contraints.dart';
import '../../models/models.dart';

class SingleMovieCard extends StatelessWidget {
  final Movie movie;
  const SingleMovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: InkWell(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(
                      movie: movie,
                    ))),
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  boxShadow: const [kDefaultShadow],
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage(movie.poster), fit: BoxFit.fill)),
            )),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2)),
            Text(
              movie.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/icons/star_fill.svg",
                  height: 20,
                ),
                const SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Text(
                  movie.rating.toString(),
                  style: Theme.of(context).textTheme.bodyMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
