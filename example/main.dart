import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:passport_image/passport_image.dart';

void main() {
  // Load an image from file
  final inputFile = File('example/input.jpg');
  final inputImage = img.decodeImage(inputFile.readAsBytesSync());

  if (inputImage != null) {
    // Crop the image to passport size
    final croppedImage = ImageResize.resizeToPassportSize(inputImage);

    // Save the cropped image to a new file
    final outputFile = File('example/output_passport.jpg');
    outputFile.writeAsBytesSync(img.encodeJpg(croppedImage));
    print('Image successfully cropped to passport size.');
  } else {
    print('Failed to load the input image.');
  }
}
