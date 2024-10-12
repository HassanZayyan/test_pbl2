import 'package:flutter/material.dart';

class RatingPage extends StatelessWidget {
  static const String nameRoute = '/rating';

  const RatingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating'),
      ),
      body: Center(
        child: Text('Rating Page'),
      ),
    );
  }
}


