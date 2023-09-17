import 'package:flutter/material.dart';
import 'package:test/components/button.dart';
import 'package:test/components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                const SizedBox(height: 250),

                //logo
                Image.asset(
                  '../../assets/logo.png',
                ),

                //welcome
                const Text(
                  "",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Pacifico',
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 20),

                //email
                MyTextField(
                  controller: emailTextController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(height: 20),

                //Password
                MyTextField(
                  controller: passwordTextController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 20),

                //sign in button
                MyButton(
                  onTap: () {},
                  text: 'Sign In',
                ),

                const SizedBox(height: 25),

                //Register Section
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member? ",
                      style: TextStyle(color: Colors.white38),
                    ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white70),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
