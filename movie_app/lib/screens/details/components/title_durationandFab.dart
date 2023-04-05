import 'package:flutter/material.dart';

import '../../../contraints.dart';
import '../../../models/models.dart';

class TitileDurationAndFab extends StatelessWidget {
  const TitileDurationAndFab({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: kDefaultPadding / 2,
              ),
              Row(
                children: [
                  Text(
                    movie.year.toString(),
                    style: const TextStyle(color: kTextLightColor),
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  const Text(
                    "PG-13",
                    style: TextStyle(color: kTextLightColor),
                  ),
                  const SizedBox(
                    width: kDefaultPadding,
                  ),
                  const Text(
                    "2h 32min",
                    style: TextStyle(color: kTextLightColor),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(20)),
          height: 64,
          width: 64,
          child: TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              )),
        )
      ]),
    );
  }
}
