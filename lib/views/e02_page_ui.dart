// ignore_for_file: sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e04_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

class E02PageUI extends StatefulWidget {
  const E02PageUI({super.key});

  @override
  State<E02PageUI> createState() => _E02PageUIState();
}

class _E02PageUIState extends State<E02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ภาพส้ม + ปุ่มย้อนกลับ
            Stack(
              children: [
                Image.asset(
                  'assets/images/imge2.png',
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 40,
                  left: 16,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),

            // ส่วนเนื้อหา
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome back",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text("Login to your account",
                      style: TextStyle(color: Colors.black54)),
                  SizedBox(height: 24),

                  // Email / Phone
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter email or phone",
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
                      suffixIcon: Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),

                  // Forgot password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const E04PageUI(),
                          ),
                        );
                      },
                      child: Text("Forgot Password ?",
                          style: TextStyle(color: Colors.orange)),
                    ),
                  ),
                  SizedBox(height: 8),

                  // Log In button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    onPressed: () {},
                    child: Text("Log In"),
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
                          child: Image.asset("assets/images/imge3.png", width: 32)),
                      InkWell(
                          child: Image.asset("assets/images/imge4.png", width: 32)),
                      InkWell(
                          child: Image.asset("assets/images/imge5.png", width: 32)),
                    ],
                  ),
                  SizedBox(height: 24),

                  // Create Account
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: "Don’t have an Account? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(
                            text: "Create Account",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // ใส่การนำทางที่ต้องการตรงนี้
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const E03PageUI(),
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
