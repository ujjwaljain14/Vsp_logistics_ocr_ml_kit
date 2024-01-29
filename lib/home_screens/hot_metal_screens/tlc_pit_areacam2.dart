import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtime_ocr/text_detector_view.dart';

class TlcPitAreaCam2 extends StatelessWidget {
  const TlcPitAreaCam2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TLC PIT AREA"),),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: TextRecognizerView("TLC PIT AREA","2"),
          ),
          Expanded(
            child: Obx(()=> Center(child: Text("Ladle Found:- ${TextRecognizerView.numberFound.value}",style: TextStyle(fontSize: 20),))),
          )
        ],
      ),
    );
  }
}
