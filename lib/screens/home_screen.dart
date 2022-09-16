import 'package:flutter/material.dart';
import 'package:flutter_online_learning_app/widgets/my_horizontal_list.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> entries = <String>[
    'Become UI/UX\nDesigner Expert',
    'Graphic Design\nMaster for Beginner',
    'Astronomy from\nZero to Hero'
  ];
  final List<String> imagePath = <String>['saly10', 'saly36_detail', 'saly21'];
  final List<int> startColor = <int>[0xFF9288E4, 0xFFF4C465, 0xFFF4C465];
  final List<int> endColor = <int>[0xFF534EA7, 0xFFC63956, 0xFFA67108];
  final List<int> boxColor = <int>[0xFFAFA8EE, 0xFFF4C67A, 0xFFF4C67A];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        physics: const BouncingScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Online',
                style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Master Class',
                style: GoogleFonts.roboto(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 22,
          ),
          SizedBox(
            height: 349,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return MyHorizontalList(
                  startColor: startColor[index],
                  endColor: endColor[index],
                  boxColor: boxColor[index],
                  courseHeadline: 'Recommended',
                  courseTitle: entries[index],
                  courseImage: 'assets/images/img_${imagePath[index]}.png',
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Free Online Classes',
                style: GoogleFonts.roboto(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'From over 80 lectures',
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: const Color(0xFF9C9A9A),
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
