import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(' About Me',
                  style: GoogleFonts.rubik(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          Row(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(23),
                  child: Image.asset('assets/abdul.png', fit: BoxFit.cover),
                ),
              ),
              Text(
                'Abdulrahman Abusnena',
                style: GoogleFonts.montserrat(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
