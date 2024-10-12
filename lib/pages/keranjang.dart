import 'package:flutter/material.dart';

class KeranjangPage extends StatelessWidget {
  static const String nameRoute = '/keranjang';

  const KeranjangPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
      ),
      body: Center(
        child: Text('Keranjang Page'),
      ),
    );
  }
}


