import 'package:flutter/material.dart';
import 'package:myapp/custom_textfield.dart';
import 'package:myapp/halaman_forgotpassword.dart';
import 'package:myapp/styles.dart';
import 'package:myapp/halaman_signup.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({super.key});

  @override
  State<HalamanLogin> createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Akun',
          style: TextStyles.title,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo_puskesmas.png',
                  height: 100.0,
                ),
              ),
              Center(
                child: Text(
                  'Posbindu PTM Mojo',
                  style: TextStyles.title
                      .copyWith(fontSize: 24.0, color: AppColors.darkGreen),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Detail Login',
                style: TextStyles.title,
              ),
              const SizedBox(height: 16.0),
              CustomTextfield(
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  hint: 'Email'),
              const SizedBox(height: 16.0),
              CustomTextfield(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                hint: 'Kata Sandi',
                isObsecure: isObsecure,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HalamanForgotpassword()),
                  );
                },
                child: Text(
                  'Lupa Kata Sandi?',
                  style: TextStyles.body.copyWith(fontSize: 16.0),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.darkGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Masuk',
                    style: TextStyles.title
                        .copyWith(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Buat Akun Baru',
                style: TextStyles.body.copyWith(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanSignup()),
                  );
                },
                child: Text(
                  'Daftar',
                  style: TextStyles.body.copyWith(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
