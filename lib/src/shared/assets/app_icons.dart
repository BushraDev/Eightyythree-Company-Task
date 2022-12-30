class AppIcons {
  AppIcons._();

  static final String grocery = 'grocery.svg'.iconPath;
  static final String news = 'news.svg'.iconPath;
  static final String favorites = 'favorites.svg'.iconPath;
  static final String favouriteFilled = 'favourite_filled.svg'.iconPath;
  static final String cart = 'cart.svg'.iconPath;
  static final String cart2 = 'cart2.svg'.iconPath;
  static final String location = 'location.svg'.iconPath;
  static final String search = 'search.svg'.iconPath;
}

extension Assets on String {
  static String get assetPath => 'assets/';
  String get iconPath => assetPath + 'icons/' + this;
}
