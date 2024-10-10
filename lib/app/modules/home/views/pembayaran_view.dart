import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_praktikm/app/modules/home/views/home_view.dart';

class pembayaran_view extends GetView<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembayaran'),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'PEMBAYARAN',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/image1.png', width: 60, height: 60),
                Image.asset('assets/image2.png', width: 60, height: 60),
                Image.asset('assets/image3.png', width: 60, height: 60),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Jumlah', style: TextStyle(fontWeight: FontWeight.bold)),
            const Text('• Ongkir       : 10.000'),
            const Text('• Kemasan   : 5.000'),
            const SizedBox(height: 8),
            const Text('Total: 165.000',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const Text('Metode Pembayaran',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(Icons.money, size: 40),
              title: const Text('Cash'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Get.to(() => succes_view());
              },
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: const Icon(Icons.qr_code, size: 40),
              title: const Text('QR'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Get.to(() => succes_view());
              },
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: const Icon(Icons.account_balance, size: 40),
              title: const Text('Bank'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Get.to(() => succes_view());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class succes_view extends GetView<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Pembayaran Selesai'),
        centerTitle: true,
        backgroundColor: Colors.pink[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pembayaran Selesai',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 16),
            const Icon(Icons.check_circle, size: 100, color: Colors.green),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman lain jika diperlukan
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                  ),
                  child: const Text('Cek Status'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => pembayaran_view());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                  ),
                  child: const Text('Kembali'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
