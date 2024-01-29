import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtime_ocr/home_screens/hot_metal_screens/convertercam1.dart';
import 'package:realtime_ocr/home_screens/hot_metal_screens/tlc_pit_areacam1.dart';
import 'package:realtime_ocr/res/colors/app_color.dart';
import '../res/assets/fonts/app_fonts.dart';
import 'hot_metal_screens/convertercam2.dart';
import 'hot_metal_screens/tlc_pit_areacam2.dart';

class HotMetalScreen extends StatelessWidget {
  const HotMetalScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hot Metal Ladle Cameras" , style: AppStyles.headingFont,),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TlcPitAreaCam1(),
                    ),);
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(5.0),
                  color: AppColor.itemColor,
                  alignment: Alignment.center,
                  child: Text("TLC pit area Camera 1 ",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                ),
              ),
              const SizedBox(height: 5,width: 20,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TlcPitAreaCam2(),
                    ),);
                },
                child: Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(5.0),
                  color: AppColor.itemColor,
                  alignment: Alignment.center,
                  child: Text("TLC pit area Camera 2 ",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,width: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 5,width: 20,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ConverterHotMetalCam1(),
                    ),);
                },
                child: Container(
                  width:100,
                  height: 100,
                  padding: const EdgeInsets.all(5.0),
                  color: AppColor.itemColor,
                  alignment: Alignment.center,
                  child: Text("Converter Camera 1 ",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                ),
              ),
              const SizedBox(height: 5,width: 20,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ConverterHotMetalCam2(),
                    ),);
                },
                child: Container(
                  width:100,
                  height: 100,
                  padding: const EdgeInsets.all(5.0),
                  color: AppColor.itemColor,
                  alignment: Alignment.center,
                  child: Text("Converter Camera 2 ",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                ),
              ),
            ],
          )
        ],
      )
      // TimeLineComponent(data: HotMetalScreenViewModel.stageList,),
    );
  }
}
