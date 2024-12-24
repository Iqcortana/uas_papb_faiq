import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../main.dart'; // MainPage
import '../login_page.dart'; // LoginPage

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // Jika pengguna login, arahkan ke MainPage
        if (snapshot.connectionState == ConnectionState.active) {
          print("FirebaseAuth state is active");
          User? user = snapshot.data;
          if (user == null) {
            print("No user logged in");
            return const LoginPage();
          } else {
            print("User is logged in: ${user.email}");
            return const MainPage();
          }
        }

        // Jika sedang memuat, tampilkan indikator loading
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
