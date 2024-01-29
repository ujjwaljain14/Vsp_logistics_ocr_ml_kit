import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtime_ocr/text_detector_view.dart';

class LadlePreparationBayCam2 extends StatelessWidget {
  const LadlePreparationBayCam2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ladle Preparation Bay"),),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: TextRecognizerView("Ladle Preparation Bay","2"),
          ),
          Expanded(
            child: Obx(()=> Center(child: Text("Ladle Found:- ${TextRecognizerView.numberFound.value}",style: TextStyle(fontSize: 20),))),
          )
        ],
      ),
    );
  }
}
