import 'package:flutter/material.dart';
import 'pages/beranda.dart';
import 'pages/keranjang.dart';
import 'pages/login_screen.dart';
import 'pages/profil.dart';
import 'pages/rating.dart';
import 'pages/notifikasi.dart'; 
import 'pages/chat.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      initialRoute: LoginPage.nameRoute,
      routes: {
        LoginPage.nameRoute: (context) => const LoginPage(),
        BerandaPage.nameRoute: (context) => const BerandaPage(),
        RatingPage.nameRoute: (context) => const RatingPage(),
        KeranjangPage.nameRoute: (context) => const KeranjangPage(),
        ProfilPage.nameRoute: (context) => const ProfilPage(),
        NotifikasiPage.nameRoute: (context) => const NotifikasiPage(),
        ChatPage.nameRoute: (context) => const ChatPage(),
      }, 
    );
  }
}
