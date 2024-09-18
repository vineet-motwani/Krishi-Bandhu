import '/flutter_flow/flutter_flow_util.dart';
import 'soil_prediction_widget.dart' show SoilPredictionWidget;
import 'package:flutter/material.dart';

class SoilPredictionModel extends FlutterFlowModel<SoilPredictionWidget> {
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
