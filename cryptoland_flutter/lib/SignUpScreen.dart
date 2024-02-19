// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'SignInScreen.dart'; // Import the SignInScreen

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController cnicController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sign Up'),
              background: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Field_in_K%C3%A4rk%C3%B6l%C3%A4.jpg/275px-Field_in_K%C3%A4rk%C3%B6l%C3%A4.jpg', // Replace with your image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: cnicController,
                    decoration: const InputDecoration(
                      labelText: 'CNIC',
                      hintText: 'Enter your CNIC',
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                    ),
                    obscureText: true,
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const SignInScreen()),
                    ),
                    child: const Text('Already have an account? Sign In'),
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
