import 'package:flutter/material.dart';

class C01PageUi extends StatefulWidget {
  const C01PageUi({super.key});

  @override
  State<C01PageUi> createState() => _C01PageUiState();
}

class _C01PageUiState extends State<C01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/imgc1.png', // รูปภาพพื้นหลังของคุณ
              fit: BoxFit.cover,
            ),
          ),

          // Content on top of the image
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Rounded logo "H"
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20), // มนตามต้นฉบับ
                  ),
                  child: Center(
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(20), // ขอบมนเหมือนเดิม
                      child: Image.asset(
                        'assets/images/imgc2.png', // เปลี่ยนชื่อเป็นชื่อไฟล์โลโก้ H ของคุณ
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Text: HOPE FOR HUMANITY
                const Text(
                  'HOPE FOR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  'HUMANITY',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 16),

                // Text: welcome
                const Text(
                  'Welcome to\nhope for humanity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
