import 'package:flutter/material.dart';
import 'package:alhikam_mart_mobile/main.dart';
import 'package:alhikam_mart_mobile/screens/menu.dart';
import 'package:alhikam_mart_mobile/screens/shoplist_form.dart';
import 'package:alhikam_mart_mobile/screens/shoplist_items.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Shopping List',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("Catat seluruh keperluan belanjamu di sini!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Produk'),
            // Bagian redirection ke MyHomePage
            onTap: () 
                  {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProductListPage(products: products)));
              }
            ,
          ),
          ListTile(
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Produk'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ShopFormPage()));
            },
          ),
        ],
      ),
    );
  }
}