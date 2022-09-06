import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../resources/colors.dart';
import 'home_base.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void loaded() async {
    await Future.delayed(const Duration(seconds: 5), () async {
      await checkSession();
    });
  }

  checkSession() async {
    bool userSession = true;
    print(userSession);
    if (userSession) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomeBase()));
    } else {}
  }

  @override
  void initState() {
    super.initState();
    loaded();
  }

  @override
  Widget build(BuildContext context) {
    double sysHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: mainBGColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                  ),
                ),
                SpinKitThreeBounce(
                  size: 35,
                  color: secondaryColor,
                )
              ],
            ),
          ),
          const Expanded(
            flex: 3,
            child: Text(
              "TECHNICAL ASSESSMENT",
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Text("Powered by Orel IT"),
          ),
        ],
      ),
    );
  }
}
