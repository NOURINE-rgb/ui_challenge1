import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ElementGridview extends StatelessWidget {
  const ElementGridview(
      {required this.title, required this.pathImage, super.key});
  final String title;
  final String pathImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          width: 90,
          height: 99,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset.zero,
                blurRadius: 10,
              ),
            ],
          ),
          child: SvgPicture.asset(
            pathImage,
            width: 50,
            height: 50,
            color: Theme.of(context).primaryColor,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.quicksand(
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
