import 'package:flutter/material.dart';
import 'package:login_screen_test/constant/constant.dart';

class NotifikasiPage extends StatelessWidget {
  static const String nameRoute = '/notifikasi';

  const NotifikasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5CC), 
      appBar: AppBar(
        backgroundColor: primaryButtonColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          iconSize: 30,
        ),
        title: const Text(
          'Notifikasi',
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(3.0),
            color: notificationbgColor, alignment: Alignment.centerLeft,
            child: const Text(
              '    Status Pesanan',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildNotificationItem(
                  'Pesanan Tiba',
                  'Pesanan 2597AOJOE9UD telah tiba di tujuan.',
                  '26-09-2024 12:00',
                ),
                const Divider(height: 1, color: Color(0xFFF1F1F1)),
                _buildNotificationItem(
                  'Pesananmu dalam perjalanan!',
                  'Tunggu sebentar ya, Pengemudi sedang menuju lokasimu!',
                  '',
                ),
                const Divider(height: 1, color: Color(0xFFF1F1F1)),
                _buildNotificationItem(
                  'Pesanan Tiba',
                  'Pesanan 2597AOJOE9UD telah tiba di tujuan.',
                  '26-09-2024 12:00',
                ),
                const Divider(height: 1, color: Color(0xFFF1F1F1)),
                _buildNotificationItem(
                  'Pesananmu dalam perjalanan!',
                  'Tunggu sebentar ya, Pengemudi sedang menuju lokasimu!',
                  '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(String title, String content, String time) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF5CC),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  content,
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
                if (time.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: TextStyle(fontSize: 12, color: Color(0xFF000000)),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
