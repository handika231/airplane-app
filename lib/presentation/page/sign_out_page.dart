import 'package:flutter/material.dart';

class SignOutPage extends StatelessWidget {
  const SignOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Sign Out'),
          onPressed: () {},
        ),
      ),
    );
  }
}
