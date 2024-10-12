import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  static const String nameRoute = '/profil';

  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Text('Profil Page'),
      ),
    );
  }
}
