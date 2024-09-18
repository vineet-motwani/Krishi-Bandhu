import '/flutter_flow/flutter_flow_util.dart';
import 'pest_prediction_widget.dart' show PestPredictionWidget;
import 'package:flutter/material.dart';

class PestPredictionModel extends FlutterFlowModel<PestPredictionWidget> {
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
