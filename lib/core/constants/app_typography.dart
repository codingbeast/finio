import 'package:flutter/material.dart';

class AppTypography {
  static const double h1 = 26;
  static const double h2 = 22;
  static const double h3 = 20;
  static const double body = 16;
  static const double small = 14;

  // ---------------------------
  //   TITLES – POPPINS
  // ---------------------------
  static TextStyle headlineXL(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge!;

  static TextStyle headlineL(BuildContext context) =>
      Theme.of(context).textTheme.headlineMedium!;

  static TextStyle headlineS(BuildContext context) =>
      Theme.of(context).textTheme.headlineSmall!;

  /// title
  static TextStyle titleL(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!;

  static TextStyle titleM(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!;

  static TextStyle titleS(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall!;

  // ---------------------------
  //   BODY – INTER
  // ---------------------------
  static TextStyle bodyL(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!;

  static TextStyle bodyM(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!;

  static TextStyle bodyS(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!;

  // ---------------------------
  //   LABELS (buttons, chips)
  // ---------------------------
  static TextStyle labelL(BuildContext context) =>
      Theme.of(context).textTheme.labelLarge!;

  static TextStyle labelM(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!;

  static TextStyle labelS(BuildContext context) =>
      Theme.of(context).textTheme.labelSmall!;

  // ---------------------------
  //   CUSTOM – BADGES (Poppins Bold)
  // ---------------------------
  static TextStyle badgeBold(BuildContext context) => titleS(
    context,
  ).copyWith(fontSize: 14, fontWeight: FontWeight.w700, letterSpacing: 1.0);

  // ---------------------------
  //   NUMBERS – OPTIONAL (Monospace)
  // ---------------------------
  static TextStyle number(BuildContext context) => bodyL(context).copyWith(
    fontFamily: 'Inter', // or RobotoMono if you want
    fontWeight: FontWeight.w600,
    letterSpacing: 0.3,
  );
}
