import 'package:flutter/material.dart';
import 'package:myapp/custom_textfield.dart';
import 'package:myapp/halaman_login.dart';
import 'package:myapp/styles.dart';

class HalamanSignup extends StatefulWidget {
  const HalamanSignup({super.key});

  @override
  State<HalamanSignup> createState() => _HalamanSignupState();
}

class _HalamanSignupState extends State<HalamanSignup> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isObsecurePassword = true;
  bool isObsecureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Akun',
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
                'Detail Pendaftaran',
                style: TextStyles.title,
              ),
              const SizedBox(height: 16.0),
              CustomTextfield(
                controller: nameController,
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
                hint: 'Nama Lengkap',
              ),
              const SizedBox(height: 16.0),
              CustomTextfield(
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                hint: 'Email',
              ),
              const SizedBox(height: 16.0),
              CustomTextfield(
                controller: passwordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.next,
                hint: 'Kata Sandi',
                isObsecure: isObsecurePassword,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObsecurePassword = !isObsecurePassword;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              CustomTextfield(
                controller: confirmPasswordController,
                textInputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                hint: 'Konfirmasi Kata Sandi',
                isObsecure: isObsecureConfirmPassword,
                hasSuffix: true,
                onPressed: () {
                  setState(() {
                    isObsecureConfirmPassword = !isObsecureConfirmPassword;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.darkGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  // Logika pendaftaran akun akan dimasukkan di sini.
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Daftar',
                    style: TextStyles.title
                        .copyWith(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Sudah punya akun?',
                style: TextStyles.body.copyWith(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanLogin()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyles.body.copyWith(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
