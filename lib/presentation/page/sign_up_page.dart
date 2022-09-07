import 'package:airplane_app/common/style.dart';
import 'package:airplane_app/presentation/routes/app_route.gr.dart';
import 'package:airplane_app/presentation/widgets/custom_button_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});
//create key form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // NOTE: HEADER
            Container(
              margin: const EdgeInsets.only(top: 30, left: 24),
              child: Text(
                'Join us and get\nyour next journey',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 24, right: 24),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    fullNameForm(),
                    const SizedBox(
                      height: 20,
                    ),
                    emailForm(),
                    const SizedBox(
                      height: 20,
                    ),
                    passwordForm(),
                    const SizedBox(
                      height: 20,
                    ),
                    bodyForm(),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: CustomButtonWidget(
                        title: 'Get Started',
                        onPressed: () {
                          AutoRouter.of(context).push(
                            const BonusRoute(),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Terms and Conditions',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: light,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bodyForm() {
    return TextFormField(
      textInputAction: TextInputAction.done,
      keyboardType: TextInputType.name,
      validator: (value) => value!.isEmpty ? 'Please fill your hobby' : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        hintText: 'Hobby',
      ),
    );
  }

  passwordForm() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      validator: (value) => value!.isEmpty ? 'Please fill your password' : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        hintText: 'Password',
      ),
    );
  }

  emailForm() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      validator: (value) => value!.isEmpty ? 'Please fill your email' : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        hintText: 'Email Address',
      ),
    );
  }

  fullNameForm() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.name,
      validator: (value) => value!.isEmpty ? 'Please fill your name' : null,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        hintText: 'Full Name',
      ),
    );
  }
}
