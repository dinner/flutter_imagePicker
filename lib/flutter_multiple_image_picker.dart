import 'dart:async';

import 'package:flutter/services.dart';

class FlutterMultipleImagePicker {
  static const MethodChannel _channel =
      const MethodChannel('flutter_multiple_image_picker');

  static Future<List> pickMultiImages(int maxImages, bool isSingle,int type) async {
    Map<String, dynamic> args = <String, dynamic>{};
    args.putIfAbsent("maxImages", () => maxImages);
    args.putIfAbsent("isSingle", () => isSingle);
    args.putIfAbsent("imageOrVideo", () => type);
    final List filePath =
        await _channel.invokeMethod('pickUpImagesImage', args);
        print('$filePath');
    return filePath;
    //return filePath == null ? null : new File(filePath);
  }

}
