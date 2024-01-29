import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/L1cam1.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/L1cam2.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/L2cam1.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/L2cam2.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/RHcam1.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/RHcam2.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/caster_machinescam1.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/caster_machinescam2.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/ladle_preparation_baycam1.dart';
import 'package:realtime_ocr/home_screens/steel_ladle_screens/ladle_preperation_baycam2.dart';

// import '../../components/TimeLineComponent.dart';
import '../../res/assets/fonts/app_fonts.dart';
import '../res/colors/app_color.dart';

class SteelLadleScreen extends StatelessWidget {
  const SteelLadleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Steel Ladle Cameras", style: AppStyles.headingFont,),
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
                        builder: (context) => const LadlePreparationBayCam1(),
                      ),);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("Ladle Preparation Bay Camera 1",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
                const SizedBox(height: 5,width: 20,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LadlePreparationBayCam2(),
                      ),);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("Ladle Preparation Bay Camera 2",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,width: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const L1Cam1(),
                      ),);
                  },
                  child: Container(
                    width:100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("L1 Camera 1 ",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
                const SizedBox(height: 20,width: 20,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const L1Cam2(),
                      ),);
                  },
                  child: Container(
                    width:100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("L1 Camera 2",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,width: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const L2Cam1(),
                      ),);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("L2 Camera 1",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
                const SizedBox(height: 5,width: 20,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const L2Cam2(),
                      ),);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("L2 Camera Cam2",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,width: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RHCam1(),
                      ),);
                  },
                  child: Container(
                    width:100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("RH Camera 1",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
                const SizedBox(height: 20,width: 20,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const RHCam2(),
                      ),);
                  },
                  child: Container(
                    width:100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("RH Camera 2",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,width: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CasterMachineCam1(),
                      ),);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("Caster Machines Camera 1",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
                const SizedBox(height: 20,width: 20,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CasterMachineCam2(),
                      ),);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("Caster Machines Camera 2",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
