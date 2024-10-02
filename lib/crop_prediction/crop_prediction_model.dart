import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'crop_prediction_widget.dart' show CropPredictionWidget;
import 'package:flutter/material.dart';

class CropPredictionModel extends FlutterFlowModel<CropPredictionWidget> {
  ///  Local state fields for this page.

  String apiResponse = 'Unable to identify the crop in the image.';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Hugging API)] action in Image widget.
  ApiCallResponse? apiResultkwp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
