import 'package:flutter/material.dart';
import '../constant/constant.dart';// Pastikan path ini benar
import 'chat.dart';
class UserTab extends StatelessWidget {
  const UserTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Ubah warna latar belakang jika perlu
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          PostCard(
            name: "Hanni Pham",
            time: "1 menit yang lalu",
            message:
                "Guys... ada yang lagi di daerah Sirojudin ga?? mau nitip penggaris di aninda dong.. butuh cepet...",
            price: null,
          ),
          PostCard(
            name: "Hanni Pham",
            time: "1 menit yang lalu",
            message:
                "Guys... ada yang lagi di daerah Sirojudin ga?? mau nitip penggaris di aninda dong.. butuh cepet...",
            price: null,
          ),
          PostCard(
            name: "Hanni Pham",
            time: "1 menit yang lalu",
            message:
                "Guys... ada yang lagi di daerah Sirojudin ga?? mau nitip penggaris di aninda dong.. butuh cepet...",
            price: null,
          ),
          PostCard(
            name: "Kim Minji",
            time: "10 menit yang lalu",
            message:
                "lagi pengen mie ayam deket warteg di daerah banjarsari...",
            price: "Rp 15.000",
          ),
        ],
      ),
    );
  }
}

// Komponen untuk setiap post
class PostCard extends StatelessWidget {
  final String name;
  final String time;
  final String message;
  final String? price;

  const PostCard({
    super.key,
    required this.name,
    required this.time,
    required this.message,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 255, 255, 255), // Warna background kartu
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/mas amba 1.jpg'), // Gambar profil user
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(time, style: textTextStyle.copyWith(fontSize: 11)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_vert),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            const SizedBox(height: 10),
            Text(message),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (price != null)
                  Text(price!,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                const Spacer(),
                Row(
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.check, color: Colors.black, size: 30,),
                      label: const Text('Gass',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage()), // Navigasi ke ChatPage
                        );
                      },
                      icon: const Icon(Icons.chat, color: Colors.black),
                      label: const Text('Chat', style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
