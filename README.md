This is a test package to resize photos to passport size, use at your own risk.

## Features

resize photos to passport size

## Getting started

if using image files they first need to be decoded using Image package for example

## Usage

Check main.dart in example folder

```dart
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

```
