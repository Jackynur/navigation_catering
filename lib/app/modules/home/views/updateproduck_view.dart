import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class updateproduck_view extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah & Update Produk'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Produk'),
            TextField(
              decoration: InputDecoration(hintText: 'Nama Produk'),
            ),
            SizedBox(height: 16),
            Text('Deskripsi Produk'),
            TextField(
              decoration: InputDecoration(hintText: 'Deskripsi Produk'),
            ),
            SizedBox(height: 16),
            Text('Harga Barang'),
            TextField(
              decoration: InputDecoration(hintText: 'Harga Produk'),
            ),
            SizedBox(height: 16),
            Text('Gambar Produk'),
            TextField(
              decoration: InputDecoration(hintText: 'Gambar Produk'),
              maxLines: 3,
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Logika untuk tambah produk
                    print('Tambah produk');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  ),
                  child: Text('Tambah'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Logika untuk update produk
                    print('Update produk');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  ),
                  child: Text('Update'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
