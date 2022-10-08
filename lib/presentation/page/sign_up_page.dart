import 'package:airplane_app/common/style.dart';
import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/presentation/routes/app_route.gr.dart';
import 'package:airplane_app/presentation/widgets/custom_button_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
//create key form
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late TextEditingController nameController;

  late TextEditingController emailController;

  late TextEditingController passwordController;

  late TextEditingController hobbyController;

  late List<TextEditingController> controllers;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    hobbyController = TextEditingController();
    controllers = [
      nameController,
      emailController,
      passwordController,
      hobbyController,
    ];
  }

  @override
  void dispose() {
    for (var element in controllers) {
      element.dispose();
    }
    super.dispose();
  }

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
                    fullNameForm(nameController),
                    const SizedBox(
                      height: 20,
                    ),
                    emailForm(emailController),
                    const SizedBox(
                      height: 20,
                    ),
                    passwordForm(passwordController),
                    const SizedBox(
                      height: 20,
                    ),
                    hobbyForm(hobbyController),
                    const SizedBox(
                      height: 30,
                    ),
                    BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state is AuthFailure) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(state.error),
                            ),
                          );
                        } else {
                          AutoRouter.of(context)
                              .replaceAll([const BonusRoute()]);
                        }
                      },
                      builder: (context, state) {
                        if (state is AuthLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: CustomButtonWidget(
                            title: 'Get Started',
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context.read<AuthCubit>().signUp(
                                      name: nameController.text,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      hobby: hobbyController.text,
                                    );
                              }
                            },
                          ),
                        );
                      },
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

  hobbyForm(TextEditingController controller) {
    return TextFormField(
      controller: controller,
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

  passwordForm(TextEditingController controller) {
    return TextFormField(
      controller: controller,
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

  emailForm(TextEditingController controller) {
    return TextFormField(
      controller: controller,
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

  fullNameForm(TextEditingController controller) {
    return TextFormField(
      controller: controller,
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
