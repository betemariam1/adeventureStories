import '/flutter_flow/flutter_flow_util.dart';
import 'story_decision_widget.dart' show StoryDecisionWidget;
import 'package:flutter/material.dart';

class StoryDecisionModel extends FlutterFlowModel<StoryDecisionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
