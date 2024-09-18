import '/flutter_flow/flutter_flow_util.dart';
import 'weed_identification_widget.dart' show WeedIdentificationWidget;
import 'package:flutter/material.dart';

class WeedIdentificationModel
    extends FlutterFlowModel<WeedIdentificationWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
