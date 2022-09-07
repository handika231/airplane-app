import 'package:airplane_app/common/style.dart';
import 'package:airplane_app/presentation/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button_widget.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                onPressed: () {
                  AutoRouter.of(context).push(
                    SignUpRoute(),
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
