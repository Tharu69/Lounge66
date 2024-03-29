import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //user logout
  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(
          child: Text(
            "lounge66",
            style: TextStyle(fontFamily: 'Pacifico'),
          ),
        ),
        actions: [
          //sign out button
          IconButton(
            onPressed: signOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
