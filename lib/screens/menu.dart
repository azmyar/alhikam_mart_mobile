import 'package:flutter/material.dart';
import 'package:alhikam_mart_mobile/widgets/left_drawer.dart';
import 'package:alhikam_mart_mobile/widgets/shop_card.dart';

class MyHomePage extends StatelessWidget {

    MyHomePage({Key? key}) : super(key: key);
    

    final List<ShopItem> items = [
        ShopItem("Lihat Produk", Icons.checklist, const Color(0xFF77B162)),
        ShopItem("Tambah Produk", Icons.add_shopping_cart, const Color(0xFFF4B945)),
        ShopItem("Logout", Icons.logout, const Color(0xFF302E2E)),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text(
                'Alhikam Mart',
                ),
                backgroundColor: const Color(0x00000000)
            ),
            drawer: const LeftDrawer(),
            body: SingleChildScrollView(
                // Widget wrapper yang dapat discroll
                child: Padding(
                padding: const EdgeInsets.all(10.0), // Set padding dari halaman
                child: Column(
                    // Widget untuk menampilkan children secara vertikal
                    children: <Widget>[
                    const Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                        child: Text(
                        'Alhikam Mart', // Text yang menandakan toko
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                    // Grid layout
                    GridView.count(
                        // Container pada card kita.
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        children: items.map((ShopItem item) {
                        // Iterasi untuk setiap item
                        return ShopCard(item);
                        }).toList(),
                    ),
                    ],
                ),
                ),
            ),
            );
    }
}