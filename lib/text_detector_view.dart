import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:http/http.dart' as http;

import 'detector_view.dart';
import 'painters/text_detector_painter.dart';

class TextRecognizerView extends StatefulWidget {
  static RxString numberFound = "".obs;
  static RxBool hasChanged = false.obs;
  String stageName;
  String cam;

  TextRecognizerView(this.stageName, this.cam);
  @override
  State<TextRecognizerView> createState() => _TextRecognizerViewState();
}

class _TextRecognizerViewState extends State<TextRecognizerView> {
  var _script = TextRecognitionScript.latin;
  var _textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
  bool _canProcess = true;
  bool _isBusy = false;
  CustomPaint? _customPaint;
  String? _text;
  var _cameraLensDirection = CameraLensDirection.back;

  @override
  void dispose() async {
    _canProcess = false;
    _textRecognizer.close();
    TextRecognizerView.numberFound.value = "";
    super.dispose();
  }

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
          children: [
        DetectorView(
          title: 'Text Detector',
          customPaint: _customPaint,
          text: _text,
          onImage: _processImage,
          initialCameraLensDirection: _cameraLensDirection,
          onCameraLensDirectionChanged: (value) => _cameraLensDirection = value,
        ),

        // for language switching dropdown

        // Positioned(
        //     top: 30,
        //     left: 100,
        //     right: 100,
        //     child: Row(
        //       children: [
        //         Spacer(),
        //         Container(
        //             decoration: BoxDecoration(
        //               color: Colors.black54,
        //               borderRadius: BorderRadius.circular(10.0),
        //             ),
        //             child: Padding(
        //               padding: const EdgeInsets.all(4.0),
        //               child: _buildDropdown(),
        //             )),
        //         Spacer(),
        //       ],
        //     )
        // ),
      ]),
    );
  }

  // dropdown widget

  // Widget _buildDropdown() => DropdownButton<TextRecognitionScript>(
  //   value: _script,
  //   icon: const Icon(Icons.arrow_downward),
  //   elevation: 16,
  //   style: const TextStyle(color: Colors.blue),
  //   underline: Container(
  //     height: 2,
  //     color: Colors.blue,
  //   ),
  //   onChanged: (TextRecognitionScript? script) {
  //     if (script != null) {
  //       setState(() {
  //         _script = script;
  //         _textRecognizer.close();
  //         _textRecognizer = TextRecognizer(script: _script);
  //       });
  //     }
  //   },
  //   items: TextRecognitionScript.values
  //       .map<DropdownMenuItem<TextRecognitionScript>>((script) {
  //     return DropdownMenuItem<TextRecognitionScript>(
  //       value: script,
  //       child: Text(script.name),
  //     );
  //   }).toList(),
  // );



  Future<void> _processImage(InputImage inputImage) async {
    if (!_canProcess) return;
    if (_isBusy) return;
    _isBusy = true;
    setState(() {
      _text = '';
    });
    final recognizedText = await _textRecognizer.processImage(inputImage);
    // if (inputImage.metadata?.size != null &&
    //     inputImage.metadata?.rotation != null) {
    //   final painter = TextRecognizerPainter(
    //     recognizedText,
    //     inputImage.metadata!.size,
    //     inputImage.metadata!.rotation,
    //     _cameraLensDirection,
    //   );
    //   _customPaint = CustomPaint(painter: painter);
    // } else {
    //   _text = 'Recognized text:\n\n${recognizedText.text}';
    //   // TODO: set _customPaint to draw boundingRect on top of image
    //   _customPaint = null;
    // }
    // print("-----------------------------------");
    if(isNumeric(recognizedText.text.toString())){
      // print("<---------------------------->");
      // print(recognizedText.text);
      if(recognizedText.text != TextRecognizerView.numberFound.value){
        TextRecognizerView.numberFound.value = recognizedText.text;
        TextRecognizerView.hasChanged = true.obs;
        final response = await http.post(
          Uri.parse("http://13.126.248.147:5000/"),
          headers: {
            "Accept": "application/json",
          },
          body: {
            "station": widget.stageName,
            "ladle_number":TextRecognizerView.numberFound.value,
            "time":DateTime.now(),
            "cam":widget.cam,
          }
        );
      }
    }
    _isBusy = false;
    if (mounted) {
      setState(() {});
    }
  }
}