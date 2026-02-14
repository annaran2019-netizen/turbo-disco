import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/models/nursing_home.dart';
import '../../data/mock_data/nursing_homes_mock.dart';
import 'dart:math';

final searchViewModelProvider =
    StateNotifierProvider<SearchViewModel, List<NursingHome>>(
  (ref) => SearchViewModel(),
);

class SearchViewModel extends StateNotifier<List<NursingHome>> {
  SearchViewModel() : super(mockNursingHomes);

  double _distanceKm(lat1, lon1, lat2, lon2) {
    const R = 6371;
    final dLat = _deg2rad(lat2 - lat1);
    final dLon = _deg2rad(lon2 - lon1);
    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(_deg2rad(lat1)) *
            cos(_deg2rad(lat2)) *
            sin(dLon / 2) *
            sin(dLon / 2);
    final c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return R * c;
  }

  double _deg2rad(double deg) => deg * pi / 180;

  void filter({required double lat, required double lon, required double radius}) {
    state = mockNursingHomes.where((h) {
      final dist = _distanceKm(lat, lon, h.latitude, h.longitude);
      return dist <= radius;
    }).toList();
  }
}
