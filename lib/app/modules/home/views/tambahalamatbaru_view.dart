import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class tambahalamatbaru_view extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengiriman Barang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Alamat Lengkap'),
            TextField(
              decoration: InputDecoration(hintText: 'Alamat Lengkap Penerima'),
            ),
            SizedBox(height: 16),
            Text('Kode Pos'),
            TextField(
              decoration: InputDecoration(hintText: 'Kode Pos Penerima'),
              obscureText: true,
            ),
            SizedBox(height: 16),
            Text('Nomor Telepon'),
            TextField(
              decoration: InputDecoration(hintText: 'Nomor Telepon Penerima'),
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
