import '/component/image_thumbnail/image_thumbnail_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_item04_widget.dart' show ListItem04Widget;
import 'package:flutter/material.dart';

class ListItem04Model extends FlutterFlowModel<ListItem04Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for ImageThumbnail component.
  late ImageThumbnailModel imageThumbnailModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    imageThumbnailModel = createModel(context, () => ImageThumbnailModel());
  }

  @override
  void dispose() {
    imageThumbnailModel.dispose();
  }
}
