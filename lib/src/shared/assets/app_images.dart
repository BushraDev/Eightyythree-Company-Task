class AppImages {
  AppImages._();

  static String locationBackground = "location_background.png".imagePath;
  static String offer1 = "offer1.png".imagePath;

}

extension Assets on String {
  static String get assetPath => 'assets/';
  String get imagePath => assetPath + 'images/' + this;
}
