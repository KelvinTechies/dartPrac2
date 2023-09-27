import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/card_carousel.dart';
import 'package:flutter_application_1/widget/featured_card.dart';
import 'package:flutter_application_1/widget/list_view.dart';
import 'package:flutter_application_1/widget/my_drawer.dart';
import 'package:flutter_application_1/widget/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Templates in Flutter"),
        backgroundColor: const Color(0xff4338ca),
        elevation: 0,
      ),
      backgroundColor: const Color(0xff4338ca),
      drawer: DrawerFb1(),
      bottomNavigationBar: BottomNavBarCurvedFb1(),
      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(1),
        child: Column(
          children: [
            Container(
              height: 240,
              child: CustomCarouselFB2(),
            ),
            Divider(
              color: Colors.white,
              height: 1,
            ),
            Container(
              child: CategoriesListMallika1(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,
              ),
              height: 400,
              child: Column(
                children: [
                  SocialPictureGroup(
                    color: Colors.orange,
                    title: "First CookBook",
                    imgUrl:
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.allrecipes.com%2Frecipe%2F48727%2Fmikes-homemade-pizza%2F&psig=AOvVaw2GwozIskNB7pT5wbu4YMgt&ust=1695914127393000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCOieicuKy4EDFQAAAAAdAAAAABAE",
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                  ),
                  SocialPictureGroup(
                    imgUrl:
                        "https://www.allrecipes.com/thmb/fFW1o307WSqFFYQ3-QXYVpnFj6E=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/48727-Mikes-homemade-pizza-DDMFS-beauty-4x3-BG-2974-a7a9842c14e34ca699f3b7d7143256cf.jpg",
                    color: Colors.orange,
                    title: "First CookBook",
                    onTap: () {},
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
