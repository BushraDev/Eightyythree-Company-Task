class Address {
  Address({
    required this.id,
    required this.title,
    required this.street,
    required this.description,
    this.latitude,
    this.longitude,
  });

  int? id;
  String? title;
  String? street;
  String? description;
  double? latitude;
  double? longitude;

}
