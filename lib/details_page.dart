import 'package:flutter/material.dart';
import 'package:new_app/models/gig.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.gig}) : super(key: key);
  final Gig gig;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(gig.colorCode),
      appBar: AppBar(
        title: Text('Page two'),
      ),
      body: Column(
        children: [
          Text(gig.name),
          Text(gig.location),
          Text(gig.salary),
        ],
      ),
    );
  }
}
