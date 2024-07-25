import '/flutter_flow/flutter_flow_util.dart';
import 'story_chapter_widget.dart' show StoryChapterWidget;
import 'package:flutter/material.dart';

class StoryChapterModel extends FlutterFlowModel<StoryChapterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
