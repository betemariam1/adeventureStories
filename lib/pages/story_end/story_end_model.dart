import '/flutter_flow/flutter_flow_util.dart';
import 'story_end_widget.dart' show StoryEndWidget;
import 'package:flutter/material.dart';

class StoryEndModel extends FlutterFlowModel<StoryEndWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
