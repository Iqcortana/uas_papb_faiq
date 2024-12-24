import 'package:flutter/material.dart';

class SKBelumMenikahPage extends StatelessWidget {
  const SKBelumMenikahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SK Belum Menikah'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Surat Keterangan Belum Pernah Menikah',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            buildFileUploadBox('Surat Pengantar RT (.pdf)'),
            const SizedBox(height: 16),
            buildTextField('NIK KTP', '64710503030040002'),
            const SizedBox(height: 16),
            buildFileUploadBox('Foto KTP'),
            const SizedBox(height: 16),
            buildTextField('Nomor KK', '64710503030040002'),
            const SizedBox(height: 16),
            buildFileUploadBox('Foto KK'),
            const SizedBox(height: 16),
            buildFileUploadBox('KTP Saksi 1 (.pdf/jpeg/png)'),
            const SizedBox(height: 16),
            buildFileUploadBox('KTP Saksi 2 (.pdf/jpeg/png)'),
          ],
        ),
      ),
    );
  }

  Widget buildFileUploadBox(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
            child: Icon(Icons.file_upload, size: 40, color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget buildTextField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        TextField(
          controller: TextEditingController(text: value),
          readOnly: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
