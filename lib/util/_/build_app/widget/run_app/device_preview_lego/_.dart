import 'package:device_preview_minus/device_preview_minus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../../../main.dart';
import '../../../../../config/device_preview_lego/_.dart';

@CoverRunApp()
Widget coverDevicePreviewLego(Widget widget) {
  if (force_use_device_preview) {
    return DevicePreview(
      enabled: true,
      builder: (context) => widget,
    );
  }

  if (kIsWeb && !kReleaseMode) {
    return DevicePreview(
      enabled: when_start_web_with_device_preview,
      builder: (context) => widget,
    );
  }

  return widget;
}
