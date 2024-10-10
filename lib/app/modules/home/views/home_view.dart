import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_praktikm/app/modules/home/views/keluhanpelanggan.dart';
import 'package:mobile_praktikm/app/modules/home/views/laporbug.dart';
import 'package:mobile_praktikm/app/modules/home/views/managepaket_view.dart';
import 'package:mobile_praktikm/app/modules/home/views/managevoucher_view.dart';
import 'package:mobile_praktikm/app/modules/home/views/pembayaran_view.dart';
import 'package:mobile_praktikm/app/modules/home/views/pengirimanbarang_view.dart';
import 'package:mobile_praktikm/app/modules/home/views/updateprofileuser_view.dart';
import '../controllers/home_controller.dart';
import '../views/updateuser_view.dart';
import '../views/updateproduck_view.dart';
import '../views/hapusproduk_view.dart';
import '../views/hapususer_view.dart';
import '../views/forgotpassword_view.dart';
import '../views/tambahalamatbaru_view.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(() =>
                    updateuser_view()); // ('updateuser'); // Navigate to UpdateUserView
              },
              child: const Text('Go to Update User View'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() =>
                    updateproduck_view()); // Navigate to UpgradeProductView
              },
              child: const Text('Go to Upgrade Product View'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => hapusproduk_View()); // Navigate to HapusprodukView
              },
              child: const Text('Go to Hapus Product View'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => hapususer_View()); // Navigate to HapusprodukView
              },
              child: const Text('Go to Hapus User View'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() =>
                    updateprofileuser_view()); // Navigasi ke Update Profile
              },
              child: const Text('Go to Update Profile'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => laporbug_view()); // Navigasi ke Lapor Bug
              },
              child: const Text('Go to Lapor Bug'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() =>
                    keluhanpelanggan_view()); // Navigasi ke Update Profile
              },
              child: const Text('Go to Keluhan Pelanggan'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => forgotpassword_view()); // Navigasi ke Lapor Bug
              },
              child: const Text('Go to Forgot Password'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => managepaket_view()); // Navigasi ke Manage Paket
              },
              child: const Text('Logout'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                    () => managevoucher_view()); // Navigasi ke Manage Voucher
              },
              child: const Text('Go to Manage Voucher'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() =>
                    pengirimanbarang_view()); // Navigasi ke Pengiriman Barang
              },
              child: const Text('Go to Pengiriman Barang'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() =>
                    tambahalamatbaru_view()); // Navigasi ke Tambah Alamat Baru
              },
              child: const Text('Go to Tambah Alamat Baru'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => pembayaran_view()); // Navigasi ke Pembayaran View
              },
              child: const Text('Go to Pembayaran View'),
            )
          ],
        ),
      ),
    );
  }
}
