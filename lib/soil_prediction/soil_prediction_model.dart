import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'soil_prediction_widget.dart' show SoilPredictionWidget;
import 'package:flutter/material.dart';

class SoilPredictionModel extends FlutterFlowModel<SoilPredictionWidget> {
  ///  Local state fields for this page.

  String apiResponse = 'Unable to identify the soil image';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (Hugging API)] action in Image widget.
  ApiCallResponse? apiResultx6p;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
