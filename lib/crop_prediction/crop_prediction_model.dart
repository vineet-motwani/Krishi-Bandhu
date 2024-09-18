import '/flutter_flow/flutter_flow_util.dart';
import 'crop_prediction_widget.dart' show CropPredictionWidget;
import 'package:flutter/material.dart';

class CropPredictionModel extends FlutterFlowModel<CropPredictionWidget> {
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
