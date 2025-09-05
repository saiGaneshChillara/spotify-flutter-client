import 'package:flutter/material.dart';
import 'package:myapp/core/theme/app_pallete.dart';
import 'package:myapp/features/auth/view/widgets/auth_gradient_button.dart';
import 'package:myapp/features/auth/view/widgets/auth_text_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Sign Up.",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthTextField(
                hintText: "Name",
                controller: nameController,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthTextField(
                hintText: "Email",
                controller: emailController,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthTextField(
                hintText: "Password",
                controller: passwordController,
                isObscure: true,
              ),
              const SizedBox(
                height: 20,
              ),
              AuthGradientButton(
                buttonText: "Sign Up",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: Theme.of(context).textTheme.titleMedium,
                  children: const [
                    TextSpan(
                      text: "Sign In",
                      style: TextStyle(
                        color: Pallete.gradient2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}