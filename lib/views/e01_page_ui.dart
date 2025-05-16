// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class E01PageUI extends StatefulWidget {
  const E01PageUI({super.key});

  @override
  State<E01PageUI> createState() => _E01PageUIState();
}

class _E01PageUIState extends State<E01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/imge1.png',
                height: 600,
              ),
              Text(
                'BERRY JUICE',
                style: GoogleFonts.libreBaskerville(),
              ),
              Text('A "Moments of healtyh sip'),
              Text('The best vitamin for your health'),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const E02PageUI(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Explore Now',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - 80,
                    55,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
