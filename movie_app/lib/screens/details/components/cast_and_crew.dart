import 'package:flutter/material.dart';

import '../../../contraints.dart';
import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  const CastAndCrew({super.key, required this.cast});
  final List cast;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast.length,
              itemBuilder: (context, index) {
                return CastCard(
                  cast: cast[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
