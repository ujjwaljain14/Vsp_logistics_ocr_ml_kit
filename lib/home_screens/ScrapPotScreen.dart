import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtime_ocr/home_screens/scrap_pot_screens/convertercam1.dart';
import 'package:realtime_ocr/home_screens/scrap_pot_screens/convertercam2.dart';
import 'package:realtime_ocr/home_screens/scrap_pot_screens/slag_dumping_areacam1.dart';
import 'package:realtime_ocr/home_screens/scrap_pot_screens/slag_dumping_areacam2.dart';

// import '../../components/TimeLineComponent.dart';
import '../../res/assets/fonts/app_fonts.dart';
import '../res/colors/app_color.dart';

class ScrapPotScreen extends StatelessWidget {
  const ScrapPotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scrap Pot Cameras", style: AppStyles.headingFont,),
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
                        builder: (context) => const ConverterScrapCam1(),
                      ),);
                  },
                  child: Container(
                    width: 100,
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
                        builder: (context) => const ConverterScrapCam2(),
                      ),);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("Converter Camera 2",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SlagDumpingAreaCam1(),
                      ),);
                  },
                  child: Container(
                    width:100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("Slag Dumping Area Camera 1",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
                const SizedBox(height: 5,width: 20,),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SlagDumpingAreaCam2(),
                      ),);
                  },
                  child: Container(
                    width:100,
                    height: 100,
                    padding: const EdgeInsets.all(5.0),
                    color: AppColor.itemColor,
                    alignment: Alignment.center,
                    child: Text("Slag Dumping Area Camera 2",style: AppStyles.headingFont.copyWith(color: AppColor.neutral100),textAlign: TextAlign.center,),
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}
