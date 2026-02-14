import 'package:flutter/material.dart';
import '../../domain/models/nursing_home.dart';

class NursingHomeCard extends StatelessWidget {
  final NursingHome home;
  const NursingHomeCard({super.key, required this.home});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: Image.asset('assets/images/placeholder.png', width: 60, height: 60),
        title: Text(home.name),
        subtitle: Text('${home.address}\n${home.price}₽ • ${home.rating}⭐'),
      ),
    );
  }
}
