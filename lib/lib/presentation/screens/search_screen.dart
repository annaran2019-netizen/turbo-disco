import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../viewmodels/search_viewmodel.dart';
import '../widgets/nursing_home_card.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});
  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  LatLng userLoc = const LatLng(55.751244, 37.618423);

  @override
  Widget build(BuildContext context) {
    final homes = ref.watch(searchViewModelProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Пансионаты рядом')),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(target: userLoc, zoom: 12),
              markers: homes
                  .map((h) => Marker(
                        markerId: MarkerId(h.id),
                        position: LatLng(h.latitude, h.longitude),
                        infoWindow: InfoWindow(title: h.name),
                      ))
                  .toSet(),
            ),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: homes.length,
            itemBuilder: (ctx, i) => NursingHomeCard(home: homes[i]),
          )),
        ],
      ),
    );
  }
}
