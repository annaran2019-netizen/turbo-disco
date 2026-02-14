class NursingHome {
  final String id;
  final String name;
  final String address;
  final double latitude;
  final double longitude;
  final double price;
  final double rating;
  final bool hasMedicalLicense;
  final bool acceptsDementia;
  final List<String> services;
  final String phone;
  final String website;

  NursingHome({
    required this.id,
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.price,
    required this.rating,
    required this.hasMedicalLicense,
    required this.acceptsDementia,
    required this.services,
    required this.phone,
    required this.website,
  });
}
