import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget _buildProfileItem(String label, String value, bool isEditable,
      {Widget? customChild}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 4.0),
          customChild ??
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      initialValue: value,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      readOnly: !isEditable,
                    ),
                  ),
                  if (isEditable) const SizedBox(width: 8.0),
                  if (isEditable)
                    const Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                ],
              ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const Text(
            'Profile Anda',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Times New Roman',
            ),
          ),
          const SizedBox(height: 16.0),
          Center(
            child: CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(
                Icons.person,
                size: 50.0,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          _buildProfileItem('Nama Lengkap', 'Faiq Athari', true),
          _buildProfileItem('Alamat KTP',
              'Jl. Projakal KM.5,5 Perum griya Kariangau Baru B1/25', true),
          _buildProfileItem('NIK KTP', '1234567890123456', true),
          _buildProfileItem(
            'Foto KTP',
            '',
            true,
            customChild: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/ktp_orang.png',
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
          _buildProfileItem('Nomor KK', '9876543210987654', true),
          _buildProfileItem(
            'Foto KK',
            '',
            true,
            customChild: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/kk_orang.png',
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(
                    Icons.edit,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
