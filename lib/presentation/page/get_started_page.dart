import 'package:airplane_app/common/style.dart';
import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routes/app_route.gr.dart';
import '../widgets/custom_button_widget.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    auth.authStateChanges().listen((event) {
      if (event != null) {
        if (mounted) {
          context.read<AuthCubit>().getUserById(event.uid);
          context.router.replace(const HomeRoute());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image_get_started.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          itemContent(context)
        ],
      ),
    );
  }

  Widget itemContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Fly Like a Bird',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Explore new world with us and let\nyourself get an amazing experiences',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 220,
              height: 50,
              child: CustomButtonWidget(
                onPressed: () async {
                  AutoRouter.of(context).push(
                    const SignUpRoute(),
                  );
                },
                title: 'Get Started',
              ),
            )
          ],
        ),
      ),
    );
  }
}
