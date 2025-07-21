import 'package:flutter/cupertino.dart';

import 'colors.dart';

class Styles {
  static BoxDecoration decoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
        AppColors.ebony,
        AppColors.studio
      ])
  );
}