import 'package:device_preview_minus/device_preview_minus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../../../main.dart';

@CoverMaterialApp()
Widget coverDevicePreviewLego(BuildContext context, Widget widget) {
  if (kIsWeb && !kReleaseMode) {
    return widget;
  }

  return DevicePreview.appBuilder(context, widget);
}
