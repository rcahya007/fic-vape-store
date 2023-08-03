import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vape_store/presentation/home/home_page.dart';

Color colorWhite = const Color(0xffffffff);
Color colorBlack = const Color(0xff000000);

TextStyle poppinsBlack = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: colorBlack,
);
TextStyle poppinsWhite = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: colorWhite,
);

const String urlBase = 'http://192.168.0.29:1340';

class GlobalData {
  static final List widgetOptions = [
    const HomePage(),
    SafeArea(
      child: Center(
        child: Text(
          'Index 1: Favorito',
          style: poppinsBlack.copyWith(fontSize: 40),
        ),
      ),
    ),
    SafeArea(
      child: Center(
        child: Text(
          'Index 2: Cart',
          style: poppinsBlack.copyWith(fontSize: 40),
        ),
      ),
    ),
    SafeArea(
      child: Center(
        child: Text(
          'Index 3: Setting',
          style: poppinsBlack.copyWith(fontSize: 40),
        ),
      ),
    ),
  ];
}
