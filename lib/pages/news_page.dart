import 'package:flutter/material.dart';
import 'news_detail_page.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Berita Kariangau',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 1.5),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0),
                  ),
                  child: Image.asset(
                    'assets/berita_kariangau.jpg', // Replace with the actual image asset path
                    height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kelurahan Kariangau Ikut Serta Pelaksanaan PIN Polio tahap 2 Serentak Seluruh Indonesia',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Row(
                        children: [
                          Icon(Icons.person, size: 16.0, color: Colors.grey),
                          SizedBox(width: 4.0),
                          Text(
                            'Admin',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                              fontFamily: 'Times New Roman',
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Icon(Icons.calendar_today,
                              size: 16.0, color: Colors.grey),
                          SizedBox(width: 4.0),
                          Text(
                            '10-12-2024',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                              fontFamily: 'Times New Roman',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const NewsDetailPage(), // Arahkan ke halaman detail berita
                              ),
                            );
                          },
                          child: const Text(
                            'Selengkapnya >',
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.blue,
                              fontFamily: 'Times New Roman',
                            ),
                          ),
                        ),
                      ),
                    ],
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
