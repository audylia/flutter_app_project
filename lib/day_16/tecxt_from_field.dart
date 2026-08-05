import 'package:flutter/material.dart';
import 'package:flutter_app_project/day_16/home_abal_abal.dart';
import 'package:flutter_app_project/extension/navigator.dart';
import 'package:lottie/lottie.dart';

class TextFromDay16 extends StatefulWidget {
  const TextFromDay16({super.key});

  @override
  State<TextFromDay16> createState() => _TextFromDay16State();
}

class _TextFromDay16State extends State<TextFromDay16> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  final _fromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _fromKey,
        child: Column(
          children: [
            TextField(controller: emailController),
            TextField(controller: emailController),
            TextField(controller: emailController),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email tidak boleh kosong";
                } else if (value.contains('@')) {
                  return "Email tidak valid";
                }
                return null;
              },
            ),
            TextFormField(controller: passwordController),
            TextFormField(controller: confirmController),
            Text(
              emailController.text,
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                print(emailController.text);
                print(passwordController.text);
                print(confirmController.text);
                if (_fromKey.currentState!.validate()) {
                  context.push(
                    HomeAbalAbalDay16(
                      email: emailController.text,
                      password: passwordController.text,
                    ),
                  );
                } else {
                  print("Belum tervalidasi");
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Info"),
                      content: Column(
                        children: [
                          Lottie.asset("assets/animation/Running Cat.json"),
                          // Text("${emailController.text} tidak valid"),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: Text("Baiklah"),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text("Tekan ini"),
            ),
          ],
        ),
      ),
    );
  }
}
