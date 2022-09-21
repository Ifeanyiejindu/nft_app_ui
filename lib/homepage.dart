import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app_ui/utils/image_box.dart';
import 'package:nft_app_ui/utils/top_part%20design.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: BlurryContainer(
          padding: EdgeInsets.only( top: 10),
          color: Colors.white.withOpacity(0.3),
          child: BottomNavigationBar(
            fixedColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            unselectedItemColor: Colors.white,

            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_none_outlined), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            ],
          ),
        ),
        backgroundColor: Color(0xFFDEDDDF),
        body: ListView(
          children: [
        //top part
            TopPart(),
            SizedBox(height: 30,),
            // Navigation Bar
            SizedBox(
              height: 600,
              child: Column(
                children: [
                  TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: 30),
                      indicatorColor: Color(0xFFD2D891),
                      labelColor: Colors.black,
                      labelStyle: GoogleFonts.bebasNeue(fontSize: 40),
                      unselectedLabelColor: Colors.grey,
                      unselectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(child: Text('Recent',),
                        ),
                        Tab(child: Text('Trending'),
                        ),
                        Tab(child: Text('Top'),
                        ),
                      ]),

                  SizedBox(height: 20,),

                  //Tab Contents
                  Expanded(
                    child: TabBarView(children: [
                      ImageBox(imagePath: 'lib/images/monkey1.jpg'),
                      ImageBox(imagePath: 'lib/images/monkey2.png'),
                      ImageBox(imagePath: 'lib/images/monkey3.png')
                    ]
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
