import '../../domain/models/nursing_home.dart';

final List<NursingHome> mockNursingHomes = [
  NursingHome(
    id: '1',
    name: 'Солнечный день',
    address: 'Москва, ул. Ленина, 10',
    latitude: 55.751244,
    longitude: 37.618423,
    price: 40000,
    rating: 4.5,
    hasMedicalLicense: true,
    acceptsDementia: false,
    services: ['своя кухня', 'охрана', 'медперсонал'],
    phone: '+7 495 123-45-67',
    website: 'https://example.com',
  ),
  // Добавить ещё 9–14 объектов аналогично
];
