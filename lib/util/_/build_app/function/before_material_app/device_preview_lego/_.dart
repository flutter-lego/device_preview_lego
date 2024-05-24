import 'package:device_preview_minus/device_preview_minus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../../../../main.dart';
import '../../../../shared_params/_/material_app.dart';

@ReadyBeforeMaterialApp()
Future<void> readyForDevicePreviewLego(BuildContext context) async {
  MaterialAppParams.locale =
  (!kIsWeb || kReleaseMode) ? null : DevicePreview.locale(context);
}
