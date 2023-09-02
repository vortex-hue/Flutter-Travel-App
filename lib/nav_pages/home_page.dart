import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_world/widget/app_large.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: const EdgeInsets.only(top:70, left:20),
              child: Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 30, color: Colors.black45,),
                  // this can be used instead of  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  // Expanded(child: Container()),
                  // container for the profile image
                  Container(
                    margin: const EdgeInsets.only(right:20),
                    width: 50,
                    height: 50,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5)
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),

            //discover text
            Container(
              margin: const EdgeInsets.only(left:25),
              child: AppLargeText(text: "Discover",),
            ),
            SizedBox(height: 30,),

            //tabbar
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 27, right:12),
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey.withOpacity(0.7),
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(text: "Places",),
                    Tab(text: "Inspiration",),
                    Tab(text: "Emotions",),
                  ],
                ),
              ),

            ),

            //tabbar views
            Container(
              width: 300,
              height: 300,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text("Hi"),
                  Text("Hello"),
                  Text("Bye")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  //our constructor
  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([ VoidCallback? onChanged ]){
    return _CirclePainter(color: color, radius: radius);
  }
}


class _CirclePainter extends BoxPainter{
  final Color color;
  double radius;

  //our constructor
  _CirclePainter({required this.color, required this.radius});

  @override

  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias=true;


    //drawing on the canvas
  }
}