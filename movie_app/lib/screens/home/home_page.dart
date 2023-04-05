import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:movie_app/contraints.dart';
import 'package:movie_app/screens/components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/menu.svg")),
        actions: [
          IconButton(
              padding: const EdgeInsets.only(right: kDefaultPadding),
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/search.svg"))
        ]);
  }
}
