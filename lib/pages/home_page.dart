import 'package:flutter/material.dart';
import 'sk_belum_menikah_page.dart';
import 'sk_tidak_berpenghasilan_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16.0),
            child: const Text(
              'Pelayanan SK Kariangau',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SKBelumMenikahPage(),
                ),
              );
            },
            child: buildContainer(
              'assets/tidak_menikah.png',
              'Surat Keterangan Belum Pernah Menikah',
              'Materai Digital Rp12,000',
              'Waktu Tunggu: 15 Menit',
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SKTidakBerpenghasilanPage(),
                ),
              );
            },
            child: buildContainer(
              'assets/penghasilan.png',
              'Surat Keterangan Berpenghasilan Tidak Tetap',
              'Materai Digital Rp12,000',
              'Waktu Tunggu: 20 Menit',
            ),
          ),
          // Tambahkan container lainnya di sini...
        ],
      ),
    );
  }

  Widget buildContainer(
      String image, String title, String subtitle, String time) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Image.asset(
            image, // Replace with your actual image path
            width: 50,
            height: 50,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
