import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'weed_identification_widget.dart' show WeedIdentificationWidget;
import 'package:flutter/material.dart';

class WeedIdentificationModel
    extends FlutterFlowModel<WeedIdentificationWidget> {
  ///  Local state fields for this page.

  String apiResponse = '✨ Upload your image ✨';

  String? uploadedImage;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (Hugging API)] action in Image widget.
  ApiCallResponse? apiResult9w4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
