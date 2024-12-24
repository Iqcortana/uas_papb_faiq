import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  Widget _buildHistoryItem(
      String date, String title, String status, Color statusColor) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.picture_as_pdf,
            color: Colors.red,
            size: 40,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Text(
            status,
            style: TextStyle(
              fontSize: 14.0,
              color: statusColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24.0),
        Row(
          children: [
            const Expanded(child: Divider(color: Colors.grey)),
            const SizedBox(width: 8.0),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(width: 8.0),
            const Expanded(child: Divider(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 16.0),
        ...children,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Riwayat Dokumen Anda',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          ),
          _buildSection(
            'bulan ini',
            [
              _buildHistoryItem(
                '14-12-2024',
                'Surat Keterangan Belum Pernah Menikah',
                'Diproses',
                Colors.blue,
              ),
            ],
          ),
          _buildSection(
            'bulan lalu',
            [
              _buildHistoryItem(
                '19-11-2024',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
              _buildHistoryItem(
                '12-11-2024',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
            ],
          ),
          _buildSection(
            'setahun ini',
            [
              _buildHistoryItem(
                '14-12-2023',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
              _buildHistoryItem(
                '14-12-2023',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
              _buildHistoryItem(
                '14-12-2023',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
              _buildHistoryItem(
                '14-12-2023',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
              _buildHistoryItem(
                '14-12-2023',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
              _buildHistoryItem(
                '14-12-2023',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
              _buildHistoryItem(
                '14-12-2023',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
            ],
          ),
          _buildSection(
            'tahun lalu',
            [
              _buildHistoryItem(
                '14-12-2023',
                'Surat Keterangan Belum Pernah Menikah',
                'Selesai',
                Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
