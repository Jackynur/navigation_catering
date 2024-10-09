import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class managepaket_view extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Paket'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama Paket'),
            TextField(
              decoration: InputDecoration(hintText: 'Nama Paket'),
            ),
            SizedBox(height: 16),
            Text('Harga Paket'),
            TextField(
              decoration: InputDecoration(hintText: 'Harga Paket'),
            ),
            SizedBox(height: 16),
            Text('Deskripsi Paket'),
            TextField(
              decoration: InputDecoration(hintText: 'Deskripsi Paket'),
              obscureText: true,
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Logika untuk tambah user
                    print('Tambah Paket');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  ),
                  child: Text('Tambah'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Logika untuk update user
                    print('Update Paket');
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
