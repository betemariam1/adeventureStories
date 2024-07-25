import '/component/video_thumbnail/video_thumbnail_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_item05_widget.dart' show ListItem05Widget;
import 'package:flutter/material.dart';

class ListItem05Model extends FlutterFlowModel<ListItem05Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for VideoThumbnail component.
  late VideoThumbnailModel videoThumbnailModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    videoThumbnailModel = createModel(context, () => VideoThumbnailModel());
  }

  @override
  void dispose() {
    videoThumbnailModel.dispose();
  }
}
