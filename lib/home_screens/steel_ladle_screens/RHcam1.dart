import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtime_ocr/text_detector_view.dart';

class RHCam1 extends StatelessWidget {
  const RHCam1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("RH"),),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            child: TextRecognizerView("RH","1"),
          ),
          Expanded(
            child: Obx(()=> Center(child: Text("Ladle Found:- ${TextRecognizerView.numberFound.value}",style: TextStyle(fontSize: 20),))),
          )
        ],
      ),
    );
  }
}
