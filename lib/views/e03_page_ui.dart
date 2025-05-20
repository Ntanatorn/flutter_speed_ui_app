import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';

class E03PageUI extends StatefulWidget {
  const E03PageUI({super.key});

  @override
  State<E03PageUI> createState() => _E03PageUIState();
}

class _E03PageUIState extends State<E03PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/imge2.png',
              width: double.infinity,
              height: 220,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Register",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("Create your new account",
                      style: TextStyle(color: Colors.black54)),
                  SizedBox(height: 24),

                  // Name
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Email
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Phone
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Phone",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Terms & Privacy
                  Text.rich(
                    TextSpan(
                      text: 'By signing up you agree to our ',
                      children: [
                        TextSpan(
                          text: 'Terms & Conditions',
                          style: TextStyle(color: Colors.orange),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),

                  // Sign Up button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {},
                    child: Text("Sign Up"),
                  ),
                  SizedBox(height: 24),

                  // เส้น OR
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                              thickness: 1, color: Colors.orange.shade200)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("OR"),
                      ),
                      Expanded(
                          child: Divider(
                              thickness: 1, color: Colors.orange.shade200)),
                    ],
                  ),
                  SizedBox(height: 16),

                  // ปุ่ม Social Media
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          child: Image.asset("assets/imge3.png", width: 32)),
                      InkWell(
                          child: Image.asset("assets/imge4.png", width: 32)),
                      InkWell(
                          child: Image.asset("assets/imge5.png", width: 32)),
                    ],
                  ),
                  SizedBox(height: 24),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: "Already have an Account? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Log In",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // ใส่การนำทางที่ต้องการตรงนี้
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const E02PageUI(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
