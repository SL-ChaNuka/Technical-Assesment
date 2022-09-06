import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../resources/colors.dart';

class ScienceScreen extends StatefulWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  State<ScienceScreen> createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  List<String>? list = ['1', '2', '2'];

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    print("********Refresh**********");
    _refreshController.refreshCompleted();
    print("********Stop Refresh**********");
  }

  @override
  Widget build(BuildContext context) {
    late double sysWidth = MediaQuery.of(context).size.width;
    late double sysHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: sysWidth,
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'NEWS',
                  style: TextStyle(
                    color: textWhiteColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: sysWidth,
              decoration: const BoxDecoration(
                color: mainBGColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: sysWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Science',
                            style: TextStyle(
                              color: textBlackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Here is your science news',
                            style: TextStyle(
                              color: textHideColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      width: sysWidth,
                      height: sysHeight - 300,
                      // color: Colors.blue,
                      child: SmartRefresher(
                        enablePullDown: true,
                        enablePullUp: true,
                        header: const WaterDropMaterialHeader(
                          backgroundColor: mainBGColor,
                          color: primaryColor,
                        ),
                        controller: _refreshController,
                        onRefresh: _onRefresh,
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return list!.length > 0
                              ? Container(
                                  width: sysWidth,
                                  height: constraints.maxHeight,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        for (var i = 0; i < list!.length; i++)
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 8.0),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 120,
                                                  width: sysWidth,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: boxColor,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        const CircleAvatar(
                                                          radius: 42,
                                                          backgroundColor:
                                                              Colors.blue,
                                                          child: CircleAvatar(
                                                            radius: 40,
                                                            backgroundImage:
                                                                NetworkImage(
                                                                    "https://decodescience.com.au/wp-content/uploads/2020/09/DS_appliactions.jpg"),
                                                          ),
                                                        ),
                                                        SizedBox(width: 15),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Text(
                                                              'text',
                                                              style: TextStyle(
                                                                color:
                                                                    textBlackColor,
                                                                fontSize: 18,
                                                              ),
                                                            ),
                                                            Row(
                                                              children: const [
                                                                Icon(
                                                                  Icons
                                                                      .access_time_outlined,
                                                                  color:
                                                                      textHideColor,
                                                                ),
                                                                SizedBox(
                                                                    width: 10),
                                                                Text(
                                                                  'author - Apaar Sharma',
                                                                  style:
                                                                      TextStyle(
                                                                    color:
                                                                        textHideColor,
                                                                    fontSize:
                                                                        15,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                )
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "No Data",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: textBlackColor,
                                      ),
                                    ),
                                  ],
                                );
                        }),
                      ),
                    ),

                    /*
                    Container(
                      height: 120,
                      width: sysWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: boxColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 42,
                              backgroundColor: Colors.blue,
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                    "https://decodescience.com.au/wp-content/uploads/2020/09/DS_appliactions.jpg"),
                              ),
                            ),
                            SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'text',
                                  style: TextStyle(
                                    color: textBlackColor,
                                    fontSize: 18,
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.access_time_outlined,
                                      color: textHideColor,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'author - Apaar Sharma',
                                      style: TextStyle(
                                        color: textHideColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                     */
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
