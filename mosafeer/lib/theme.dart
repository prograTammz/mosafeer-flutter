import 'colors.dart';
import 'package:flutter/material.dart';




ThemeData mosafeerTheme(){
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    colorScheme: ColorScheme.light().copyWith(
        primary: kMosafeerPurple800,
        secondary: kMosafeerRed700,
    ),
    accentColor: kMosafeerPurple600,
    primaryColor: kMosafeerPurple800,
    buttonColor: kMosafeerRed700,
    hintColor: kMosafeerPrimaryWhite,
    indicatorColor: kMosafeerPrimaryWhite,
    scaffoldBackgroundColor: kMosafeerPrimaryWhite,
    cardColor: kMosafeerPrimaryWhite,
    textSelectionColor: kMosafeerPurple700,
    errorColor: kMosafeerErrorOrange,
    buttonTheme: ButtonThemeData(
      textTheme: ButtonTextTheme.accent,
    ),
    textTheme: _buildMosafeerTextTheme(base.textTheme),
    primaryTextTheme: _buildMosafeerTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildMosafeerTextTheme(base.accentTextTheme),
    iconTheme: _customIconTheme(base.iconTheme),
  );
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: kMosafeerPrimaryWhite);
}

TextTheme _buildMosafeerTextTheme(TextTheme base) {
  return base.copyWith(
    display4: base.display4.copyWith(
      fontWeight: FontWeight.w200,
      fontSize: 96.0,
    ),
    display3: base.display3.copyWith(
      fontWeight: FontWeight.w300,
      fontSize: 60.0,
    ),
    display2: base.display2.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 48.0,
    ),
    display1: base.display1.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 34.0,
    ),
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 24.0
    ),
    title: base.title.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 20.0,
    ),
    subhead: base.subhead.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      letterSpacing: 0.5,
    ),
    subtitle: base.subtitle.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
      color: kMosafeerGrey,
    ),
    body2: base.body2.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    body1: base.body1.copyWith(
      fontWeight: FontWeight.w300,
      fontSize: 14.0,
    ),
    button: base.button.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 14.0,
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
      color: kMosafeerGrey,
    ),
    overline: base.overline.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 12.0,
    ),
  ).apply(
    fontFamily: 'Raleway',
  );
}