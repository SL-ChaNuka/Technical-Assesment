import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:technical_assesment/screens/technologyScreen.dart';
import '../resources/colors.dart';
import 'businessScreen.dart';
import 'scienceScreen.dart';

class HomeBase extends StatefulWidget {
  const HomeBase({Key? key}) : super(key: key);

  @override
  _HomeBaseState createState() => _HomeBaseState();
}

class _HomeBaseState extends State<HomeBase> {
  int selectedpage = 0;



  void _onItemTapped(int index) {
    setState(() {
      selectedpage = index;
    });
  }

  final _pageOptions = [
    ScienceScreen(),
    BusinessScreen(),
    TechnologyScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    late double sysWidth = MediaQuery.of(context).size.width / 100;
    late double sysHeight = MediaQuery.of(context).size.height;
    SystemChrome.setEnabledSystemUIOverlays([]);
    return FlutterEasyLoading(
      key: Key("HomeBase"),
      child: SafeArea(
        child: Scaffold(
          body: _pageOptions[selectedpage],
          backgroundColor: mainBGColor,
          bottomNavigationBar: BottomNavigationBar(
            // type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.userGroup),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.listSquares,
                ),
                label: '',
              ),
            ],
            currentIndex: selectedpage,
            selectedItemColor: primaryColor,
            unselectedItemColor: unselectedColor,
            iconSize: 20,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
