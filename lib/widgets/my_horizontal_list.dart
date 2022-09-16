import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList(
      {Key? key,
      required this.startColor,
      required this.endColor,
      required this.boxColor,
      required this.courseHeadline,
      required this.courseTitle,
      required this.courseImage})
      : super(key: key);

  final int startColor, endColor, boxColor;
  final String courseHeadline, courseTitle, courseImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: const Alignment(1, 0.0),
              colors: <Color>[Color(startColor), Color(endColor)],
            )),
        child: Stack(
          children: [
            Positioned(
                top: 15,
                left: 11,
                child: Container(
                  padding: const EdgeInsets.all(0),
                  width: 130,
                  height: 39,
                  decoration: BoxDecoration(
                      color: Color(boxColor),
                      borderRadius: BorderRadius.circular(36)),
                  child: Center(
                    child: Text(courseHeadline,
                        style: GoogleFonts.roboto(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ),
                )),
            Positioned(
              top: 80,
              left: 14,
              child: Text(courseTitle,
                  style: GoogleFonts.roboto(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                courseImage,
                scale: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
