import 'package:flutter/material.dart';
import 'rating.dart';
import '../constant/constant.dart';
import 'driver_tab.dart';
import 'user_tab.dart';
import 'keranjang.dart';
import 'profil.dart';
import 'notifikasi.dart';

class BerandaPage extends StatefulWidget {
  static const String nameRoute = '/beranda';

  const BerandaPage({Key? key}) : super(key: key);

  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, BerandaPage.nameRoute);
        break;
      case 1:
        Navigator.pushNamed(context, RatingPage.nameRoute);
        break;
      case 2:
        Navigator.pushNamed(context, KeranjangPage.nameRoute);
        break;
      case 3:
        Navigator.pushNamed(context, ProfilPage.nameRoute);
        break;
    }
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryButtonColor,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            color: primaryButtonColor,
            child: TabBar(
              controller: _tabController,
              indicatorPadding: const EdgeInsets.symmetric(
                  horizontal: 0, vertical: 0), // Sesuaikan padding indikator
              tabs: [
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5, // Tab berukuran setengah layar
                    alignment: Alignment.center, // Posisikan teks di tengah
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 0), // Kurangi padding horizontal
                    decoration: BoxDecoration(
                      color: _tabController.index == 0
                          ? backgroundColor
                          : Colors.transparent,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Driver',
                      style: textTextStyle.copyWith(
                        color: textColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5, // Tab berukuran setengah layar
                    alignment: Alignment.center, // Posisikan teks di tengah
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 0), // Kurangi padding horizontal
                    decoration: BoxDecoration(
                      color: _tabController.index == 1
                          ? backgroundColor
                          : Colors.transparent,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      'User',
                      style: textTextStyle.copyWith(
                        color: textColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
              indicatorColor: Colors.transparent,
              onTap: (index) {
                setState(() {
                  _tabController.index = index;
                });
              },
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined,
                color: Colors.white, size: 30),
            onPressed: () {
              Navigator.pushNamed(context, NotifikasiPage.nameRoute);
            },
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          DriverTab(),
          UserTab(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }


  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: backgroundColor,
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      selectedItemColor: navigationColor,
      unselectedItemColor: textColor,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
      ],
    );
  }
}
