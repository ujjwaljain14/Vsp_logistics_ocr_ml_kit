import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtime_ocr/home_screens/HotMetalScreen.dart';
import 'package:realtime_ocr/home_screens/ScrapPotScreen.dart';
import 'package:realtime_ocr/home_screens/SteelLadleScreen.dart';

import '../components/text_button.dart';
import '../res/assets/fonts/app_fonts.dart';
import '../res/assets/images/image_assets.dart';
import '../res/colors/app_color.dart';


// Get.toNamed(RoutesName.pastBillsScreen);


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live Cameras"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100,),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),color: AppColor.lightColor1,),
                    height: 87,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hot Metal Ladle",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),),
                          const SizedBox(height: 5,),
                          Text(" TLC pit area ",style: AppStyles.smallFont.copyWith(color: AppColor.neutral100),),
                          Text(" Converter ",style: AppStyles.smallFont.copyWith(color: AppColor.neutral100),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),color: AppColor.buttonColor.withOpacity(0.1),),
                    height: 50,
                    width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: CustomTextButton(
                                onPress: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const HotMetalScreen(),
                                    ),);
                                  },
                                title: "Cameras",width: 70,height: 30,
                              )
                          ),
                        ],
                      )
                  )
                ],
              ),
              Positioned(bottom: 10, right: 10, child: SizedBox(height:80,width:100,child: Image.asset(ImageAssets.hotMetal,fit: BoxFit.cover))),
            ],
          ),
          const SizedBox(height: 10,),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),color: AppColor.lightColor1,),
                    height: 87,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Steel Ladle",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),),
                          const SizedBox(height: 5,),
                          Text(" Ladle preparation bay ",style: AppStyles.smallFont.copyWith(color: AppColor.neutral100),),
                          Text(" LF-1 -> LF-2 -> RH",style: AppStyles.smallFont.copyWith(color: AppColor.neutral100),),
                          Text(" Caster machine ",style: AppStyles.smallFont.copyWith(color: AppColor.neutral100),),
                          ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),color: AppColor.buttonColor.withOpacity(0.1),),
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: CustomTextButton(
                            onPress: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const SteelLadleScreen(),
                                ),);
                            },
                            title: "Cameras",width: 70,height: 30,)
                        ),
                      ],
                    )
                  )
                ],
              ),
              Positioned(bottom: 10, right: 10, child: SizedBox(height:70,width:100,child: Image.asset(ImageAssets.steelLadle,fit: BoxFit.cover,))),
            ],
          ),
          const SizedBox(height: 10,),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),color: AppColor.lightColor1,),
                    height: 80,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Scrap Pot ",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),),
                          const SizedBox(height: 5,),
                          Text(" Converter ",style: AppStyles.smallFont.copyWith(color: AppColor.neutral100),),
                          Text(" Slag dumping area ",style: AppStyles.smallFont.copyWith(color: AppColor.neutral100),),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),color: AppColor.buttonColor.withOpacity(0.1),),
                    height: 50,
                    width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: CustomTextButton(
                                onPress: (){
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const ScrapPotScreen(),
                                    ),);
                                },
                                title: "Cameras",width: 70,height: 30,
                              )
                          ),
                        ],
                      )
                  )
                ],
              ),
              Positioned(bottom: 10, right: 10, child: SizedBox(height:80,width:100, child: Image.asset(ImageAssets.scrapPot,fit: BoxFit.cover,))),
            ],
          ),
          // )
        ],
      )
    );
  }
}
