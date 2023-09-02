import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:travel_world/misc/colors.dart';
import 'package:travel_world/widget/app_large.dart';
import 'package:travel_world/widget/app_normal.dart';
import 'package:travel_world/widget/responsive_button.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png", "welcome-two.png", "welcome-three.png"
  ];

  List Headlines = [
    "Trips", "Earth's", "Oceans"
  ];

  List SubHeadings = [
    "Mountains", "Peak", "Experience"
  ];
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "img/"+images[index]
                ),
                fit: BoxFit.cover
              )
            ),
            // for the other div
            child: Container(
              margin: const EdgeInsets.only(top: 150, right: 20, left: 20),
              child: Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // going to import the widget i will build for text here
                    AppLargeText(text: Headlines[index]),
                    AppText(text: SubHeadings[index], size: 30),
                    // am creating this container to force the texts to stay within the width
                    //sizebox class helps to add a gap
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      child: AppText(
                        text: "mountain hikes gives you an incredible sense of freedom along with endurance tests",
                        color: AppColors.textColor2,
                        size: 14,
                      ),
                    ),
                    const SizedBox(height: 40,),
                    ResponsiveButton(width: 120,)
                  ],
                ),
                  // columns for the dots slide effects
                  Column(
                    children: List.generate(3, (indexDots){
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index==indexDots?25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index==indexDots?AppColors.mainColor:AppColors.buttonBackground,
                        ),

                      );
                    }),
                  ),
                ],

              ),
            ),
          );
      }),
    );
  }
}
