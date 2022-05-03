extension UsefulExtensions on num {
  double wp(double width) {
    return this * width;
  }

  double hp(double height) {
    return this * height;
  }

  double rem(double width) {
    return this * ((width * 14) / 360);
  }
}
