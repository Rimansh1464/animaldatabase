import 'package:flutter/material.dart';

import 'Screen/HomePage.dart';
import 'Screen/animal.dart';
import 'Screen/details_page.dart';
import 'Screen/spashscreenn.dart';

void main() {

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute :'spachscreen',
      routes: {
     '/': (context) => const HomePage(),
     'spachscreen': (context) => const SplashScren(),
        'AnimalPage': (context) => const AnimalPage(),
        // 'DetailsPage': (context)=>  DetailsPage(allanimal: ,),
  } ),);
}

