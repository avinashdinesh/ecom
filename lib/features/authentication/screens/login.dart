import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecomm/features/authentication/controllers/onboarding_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/delivery.gif',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Enter mobile number',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '+91',
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () => LoginController.instance.loginn(),
                child: const Text('Proceed'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
