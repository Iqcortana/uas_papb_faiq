import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'register_page.dart';
import 'login_page.dart';
import 'services/auth.dart'; // AuthService file
import 'services/wrapper.dart';
import 'pages/home_page.dart';
import 'pages/history_page.dart';
import 'pages/news_page.dart';
import 'pages/news_detail_page.dart';
import 'pages/profile_page.dart';

void main() async {
  // Pastikan binding Flutter telah diinisialisasi
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Inisialisasi Firebase dengan konfigurasi platform spesifik
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print("Firebase initialized successfully");
  } catch (e) {
    // Tangani error inisialisasi Firebase
    print("Firebase initialization error: $e");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter App',
        theme: ThemeData(),
        home: const Wrapper(),
        routes: {
          '/login': (context) => const LoginPage(), // Tambahkan rute ini
          '/register': (context) => const RegisterPage(), // Tambahkan rute ini
          '/main': (context) => const MainPage(),
          '/newsDetail': (context) => const NewsDetailPage(),
        });
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const HistoryPage(),
    const NewsPage(),
    const ProfilePage(),
  ];

  Future<void> logoutUser() async {
    await AuthServices.signOut(); // Menggunakan AuthServices untuk logout
    Navigator.pushReplacementNamed(
        context, '/login'); // Kembali ke halaman login
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 50,
              height: 50,
            ),
            const Text(
              'Kelurahan Kariangau',
              style: TextStyle(
                fontFamily: 'Times New Roman',
                fontSize: 20,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.black),
            onPressed: () async {
              await logoutUser();
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Berita',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
