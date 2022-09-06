import 'package:airplane_app/presentation/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.push(const HomeRoute());
          },
          child: const Text(
            "Elevated Button",
          ),
        ),
      ),
    );
  }
}
