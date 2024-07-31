// ignore_for_file: depend_on_referenced_packages, library_private_types_in_public_api

// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:path/path.dart' show join;
// import 'package:path_provider/path_provider.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class ScannerPage extends StatefulWidget {
//   const ScannerPage({super.key});

//   @override
//   _ScannerPageState createState() => _ScannerPageState();
// }

// class _ScannerPageState extends State<ScannerPage> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   String result = '';

//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }

//   Future<void> _initializeCamera() async {
//     final cameras = await availableCameras();
//     final camera = cameras.first;

//     _controller = CameraController(camera, ResolutionPreset.high);
//     _initializeControllerFuture = _controller.initialize();
//     setState(() {});
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Scanner Page')),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 5,
//             child: FutureBuilder<void>(
//               future: _initializeControllerFuture,
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.done) {
//                   return CameraPreview(_controller);
//                 } else {
//                   return const Center(child: CircularProgressIndicator());
//                 }
//               },
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: Column(
//                 children: [
//                   ElevatedButton(
//                     onPressed: _takePicture,
//                     child: const Text('Scan Product'),
//                   ),
//                   Text('Scan result: $result'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _takePicture() async {
//     try {
//       await _initializeControllerFuture;

//       final imagePath = join(
//         (await getTemporaryDirectory()).path,
//         '${DateTime.now()}.png',
//       );

//       await _controller.takePicture();

//       final response = await _uploadPicture(imagePath);
//       setState(() {
//         result = response;
//       });
//     } catch (e) {
//       // ignore: avoid_print
//       print(e);
//     }
//   }

//   Future<String> _uploadPicture(String imagePath) async {
//     final request = http.MultipartRequest(
//       'POST',
//       Uri.parse('http://your_api_endpoint/api/upload'),
//     );

//     request.files.add(await http.MultipartFile.fromPath('picture', imagePath));

//     final response = await request.send();

//     if (response.statusCode == 200) {
//       final responseData = await http.Response.fromStream(response);
//       final List<dynamic> links = json.decode(responseData.body);
//       return links.join(', ');
//     } else {
//       throw Exception('Failed to upload picture');
//     }
//   }
// }






//phyton
// pip install Flask tensorflow pillow


// from flask import Flask, request, jsonify
// import tensorflow as tf
// import numpy as np
// from PIL import Image
// import io

// app = Flask(__name__)

// # Load pre-trained model (SSD MobileNet V2 from TensorFlow Hub)
// model = tf.saved_model.load("ssd_mobilenet_v2_fpnlite_320x320/saved_model")

// # Mock database of product links
// products_db = {
//     'laptop': ['https://ecommerce.com/product/laptop', 'https://shop.com/item/laptop'],
//     'phone': ['https://ecommerce.com/product/phone', 'https://shop.com/item/phone']
// }

// def load_image_into_numpy_array(data):
//     return np.array(Image.open(io.BytesIO(data)))

// def detect_product(image):
//     input_tensor = tf.convert_to_tensor(image)
//     input_tensor = input_tensor[tf.newaxis, ...]
//     detections = model(input_tensor)

//     classes = detections['detection_classes'][0].numpy().astype(np.int32)
//     scores = detections['detection_scores'][0].numpy()

//     for i in range(len(scores)):
//         if scores[i] > 0.5:  # Threshold for detection
//             product_class = classes[i]
//             if product_class in products_db:
//                 return product_class

//     return None

// @app.route('/api/upload', methods=['POST'])
// def upload_picture():
//     file = request.files['picture']
//     image = load_image_into_numpy_array(file.read())

//     product_class = detect_product(image)

//     if product_class:
//         links = products_db.get(product_class, [])
//         return jsonify(links)
//     else:
//         return jsonify([])

// if __name__ == '__main__':
//     app.run(debug=True, host='0.0.0.0')

//python app.py

// dependencies:
//   flutter:
//     sdk: flutter
//   camera: ^0.10.0+1
//   http: ^0.14.0