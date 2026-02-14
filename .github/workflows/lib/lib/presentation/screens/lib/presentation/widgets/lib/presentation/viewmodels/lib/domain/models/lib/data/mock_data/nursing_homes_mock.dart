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
  NursingHome(
    id: '2',
    name: 'Рассвет',
    address: 'Москва, ул. Пушкина, 5',
    latitude: 55.752023,
    longitude: 37.617499,
    price: 35000,
    rating: 4.0,
    hasMedicalLicense: false,
    acceptsDementia: true,
    services: ['медперсонал', 'ЛФК'],
    phone: '+7 495 234-56-78',
    website: 'https://example2.com',
  ),
  // Добавь ещё 8–10 объектов аналогично
];
