import 'package:image/image.dart' as img;

class ImageResize {
  /// Resizes the [input] image to a passport size (413x531 pixels).
  static img.Image resizeToPassportSize(img.Image input) {
    const int passportWidth = 413;
    const int passportHeight = 531;

    // Resize the image
    final resizedImage = img.copyResize(
      input,
      width: passportWidth,
      height: passportHeight,
    );

    return resizedImage;
  }
}
