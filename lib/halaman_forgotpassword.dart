import 'package:flutter/material.dart';
import 'package:myapp/custom_textfield.dart';
import 'package:myapp/styles.dart';

class HalamanForgotpassword extends StatefulWidget {
  const HalamanForgotpassword({super.key});

  @override
  State<HalamanForgotpassword> createState() => _HalamanForgotpasswordState();
}

class _HalamanForgotpasswordState extends State<HalamanForgotpassword> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lupa Kata Sandi',
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
              Center(
                child: Text(
                  'Masukkan Email',
                  style: TextStyles.title.copyWith(fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'Kami akan mengirimkan instruksi untuk mengatur ulang kata sandi Anda',
                style: TextStyles.body.copyWith(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              CustomTextfield(
                controller: emailController,
                textInputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                hint: 'Email',
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.darkGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  // Logika untuk mengirimkan instruksi pengaturan ulang kata sandi
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Kirim',
                    style: TextStyles.title
                        .copyWith(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Kembali ke halaman sebelumnya
                },
                child: Text(
                  'Kembali ke Login',
                  style: TextStyles.title
                      .copyWith(fontSize: 16.0, color: AppColors.darkGreen),
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
