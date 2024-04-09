import 'package:flutter/material.dart';
import 'package:flutter_clinic_app/core/core.dart';
import 'package:flutter_clinic_app/presentation/home/pages/dashboard.dart';

import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/components/spaces.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            // LEFT CONTENT
            Expanded(
              flex: 1,
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SpaceHeight(80.0),
                      const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SpaceHeight(30.0),
                      CustomTextField(
                        controller: emailController,
                        label: 'Email',
                      ),
                      const SpaceHeight(20.0),
                      CustomTextField(
                        controller: passwordController,
                        label: 'Kata Sandi',
                      ),
                      const SpaceHeight(40.0),
                      Button.filled(
                        onPressed: () {
                          context.pushReplacement(const DashboardPage());
                        },
                        label: 'MASUK',
                      ),
                      const SpaceHeight(20.0),
                      const SpaceHeight(100.0),
                      const Text(
                        '© 2024 FIC 15 | CWB CLINIC',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // RIGHT CONTENT
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: context.deviceWidth,
                  height: context.deviceHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Assets.images.splashScreen.provider(),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 67.0, right: 15.0, left: 120.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Embark on efficiency with a single click, discover the seamless world of clinic management!',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w700,
                            color: AppColors.white,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        const SpaceHeight(50.0),
                        Flexible(child: Assets.images.dokterku.image()),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}