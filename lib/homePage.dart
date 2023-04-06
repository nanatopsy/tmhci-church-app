import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tmhci/PodCast/podcast.dart';
import 'package:tmhci/store/webview.dart';
import 'Note/notes_page.dart';
import 'WATCH/web_view_stack.dart';
import 'email_us/email_us.dart';
import 'faq/FAQ.dart';
import 'give/give.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Image Name List Here
  var asset = [
    'asset/hny.jpeg',
    'asset/5.jpg',
    'asset/4.jpg',
    'asset/3.jpg',
    'asset/aura.jpg',
    'asset/cym.jpg',
    'asset/113012pm.jpg'
  ];
  List<dynamic> data = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'asset/back.png',
                ),
                colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
                fit: BoxFit.cover),
          ),
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(color: Colors.grey.shade200.withOpacity(0.3)),
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body:SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount:asset.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                // This Will Call When User Click On ListView Item
                                showDialogFunc(context, asset[index]);
                              },
                              child: SizedBox(
                                width: 150,
                                height: 150,
                                child: Image.asset(asset[index]),
                              ),
                            );
                          },
                        ),
                    ),
                    SizedBox(
                      height:600,
                      child: GridView(
                        scrollDirection: Axis.vertical,
                        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  WatchPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.slow_motion_video_sharp,
                                      color: Colors.white, size: 50),
                                  SizedBox(height: 10),
                                  Text(
                                    'watch',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                              },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.menu_book_outlined,
                                      color: Colors.white, size: 50),
                                  SizedBox(height: 10),
                                  Text(
                                    'Bible',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const GivePage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.favorite_border,
                                      color: Colors.white, size: 50),
                                  SizedBox(height: 10),
                                  Text(
                                    'Give',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  StorePage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.shopping_cart_checkout,
                                      color: Colors.white, size: 50),
                                  SizedBox(height: 10),
                                  Text(
                                    'Store',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => FAQ()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.help_outline_rounded,
                                      color: Colors.white, size: 50),
                                  SizedBox(height: 10),
                                  Text(
                                    'Help',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => EmailUs()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.email_outlined,
                                      color: Colors.white, size: 50),
                                  SizedBox(height: 10),
                                  Text(
                                    'Email Us',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const PodcastPage()));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.podcasts_rounded,
                                      color: Colors.white, size: 50),
                                  SizedBox(height: 10),
                                  Text(
                                    'Podcasts',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>  const NotesPage()));

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(Icons.message, color: Colors.white, size: 50),
                                  SizedBox(height: 10),
                                  Text(
                                    'Note',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // GestureDetector(
                          //   onTap: () {
                          //     // Navigator.push(
                          //     //     context,
                          //     //     MaterialPageRoute(
                          //     //         builder: (context) =>
                          //     //             HomePageScan()));
                          //   },
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //         color: Colors.transparent,
                          //         borderRadius: BorderRadius.circular(5),
                          //         border: Border.all(color: Colors.white)),
                          //     child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: const [
                          //         Icon(Icons.qr_code_scanner_outlined,
                          //             color: Colors.white, size: 50),
                          //         SizedBox(height: 10),
                          //         Text(
                          //           'Scan',
                          //           style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 20,
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          // GestureDetector(
                          //   onTap: () {
                          //     Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) =>  DMTPage()));
                          //   },
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //         color: Colors.transparent,
                          //         borderRadius: BorderRadius.circular(5),
                          //         border: Border.all(color: Colors.white)),
                          //     child: Column(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: const [
                          //         Icon(Icons.group, color: Colors.white, size: 50),
                          //         SizedBox(height: 10),
                          //         Text(
                          //           'Groups',
                          //           style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 20,
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ],

                      ),
                    )
                  ],
                ),

              ),
          ),
        ),
       ]
    );
  }
}

showDialogFunc(
  context,
  asset,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent,
              ),
              width: MediaQuery.of(context).size.width * 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    child: Image.asset(
                      asset,
                      width: 800,
                      height: 500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
