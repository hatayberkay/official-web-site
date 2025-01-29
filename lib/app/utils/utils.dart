import 'package:flutter/material.dart';
import 'package:sonoflightsoftware/app/sections/contact/contact.dart';
import 'package:sonoflightsoftware/app/sections/home/home.dart';
import 'package:sonoflightsoftware/app/sections/portfolio/portfolio.dart';
import 'package:sonoflightsoftware/app/sections/services/services.dart';
import 'package:sonoflightsoftware/app/widgets/footer.dart';

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    // About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
