import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihan1/presentation/feature/login/controller/login_pages_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final c = Get.find<LoginPagesController>();
  final _fieldStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20,0,20,0),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: _formLogin(),
        ),
      ),
    );
  }

  _formLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              'Login',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        SizedBox(
          child: Text(
            'Please Sign in to continue',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )
          ),
        ),
        const SizedBox(height: 30,),
        ..._userField(),
        const SizedBox(height: 20,),
        ..._passwordField(),
        const SizedBox(height: 40,),
        ..._btnLogin(),
      ],
    );
  }

  _userField() {
    return [
      Text(
        'User ID',
        style: _fieldStyle,
      ),
      const SizedBox(height: 10,),
      TextFormField(
        controller: c.userID,
        decoration: InputDecoration(
          hintText: 'User ID',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue),
          )
        ),
      ),
      Obx(() => SizedBox(
          child: Text(
            c.userIDError.value ?? '',
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: Colors.red,
            )
          ),
        ),
      ),
    ];
  }

  _passwordField() {
    return[
      Text(
        'Password',
        style: _fieldStyle,
      ),
      const SizedBox(height: 10,),
      Obx(() => TextFormField(
          controller: c.password,
          obscureText: c.passwordObscure.value,
          decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue),
            ),
            suffixIcon: IconButton(
              onPressed: () => c.passwordObscure.value = !c.passwordObscure.value,
              icon: Obx(() => Icon(
                  c.passwordObscure.value ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                ),
              )
            ),
          ),
        ),
      ),
      Obx(() => SizedBox(
          child: Text(
            c.passwordError.value ?? '',
            style: GoogleFonts.poppins(
              fontSize: 13,
              color: Colors.red,
            )
          ),
        ),
      ),
    ];
  }

  _btnLogin() {
    return [
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            c.login();
          },
          child: Text(
            'Login',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      )
    ];
  }

}