import '/flutter_flow/flutter_flow_util.dart';
import 'story_intro_widget.dart' show StoryIntroWidget;
import 'package:flutter/material.dart';

class StoryIntroModel extends FlutterFlowModel<StoryIntroWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
