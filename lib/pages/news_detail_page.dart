import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  const NewsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Kelurahan Kariangau',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Times New Roman',
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    'Kelurahan Kariangau Ikut Serta Pelaksanaan PIN Polio tahap 2 Serentak Seluruh Indonesia',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman',
                    ),
                    softWrap: true, // Memastikan teks pindah ke baris baru
                    overflow: TextOverflow.visible, // Teks tetap terlihat
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Row(
              children: [
                Icon(Icons.person, size: 16.0, color: Colors.grey),
                SizedBox(width: 4.0),
                Text(
                  'Admin',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 16.0),
                Icon(Icons.calendar_today, size: 16.0, color: Colors.grey),
                SizedBox(width: 4.0),
                Text(
                  '10-12-2024',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Image.asset(
              'assets/berita_kariangau.jpg', // Gambar berita
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Kariangau.id – Kelurahan Kariangau mendukung kegiatan PIN Polio yang serentak dilaksanakan pada Selasa (23/7/2024). '
              'Salah satunya di SDN 015 Balikpapan Barat. Lurah Kariangau menyampaikan, kegiatan ini dalam rangka memperingati Hari Anak Nasional. '
              'Dengan melaksanakan imunisasi polio tahap ke 2 dilaksanakan di dua tempat yaitu di SDN 015 Balikpapan Barat dan Pos Bantu Puskesmas Kariangau di Selok Baru. '
              'Selanjutnya Lurah Kariangau mengajak warga yang mempunyai anak 0-7 tahun agar bisa memenuhi target imunisasi polio.',
              style: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Times New Roman',
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
