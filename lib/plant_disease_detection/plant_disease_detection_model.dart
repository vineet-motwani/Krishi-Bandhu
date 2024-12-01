import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'plant_disease_detection_widget.dart' show PlantDiseaseDetectionWidget;
import 'package:flutter/material.dart';

class PlantDiseaseDetectionModel
    extends FlutterFlowModel<PlantDiseaseDetectionWidget> {
  ///  Local state fields for this page.

  String apiResponse = '✨ Upload your image ✨';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (Hugging API)] action in Image widget.
  ApiCallResponse? apiResultw9y;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
