import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'story_chapter_widget.dart' show StoryChapterWidget;
import 'package:flutter/material.dart';

class StoryChapterModel extends FlutterFlowModel<StoryChapterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for autoPlay widget.
  bool? autoPlayValue;
  // Stores action output result for [Firestore Query - Query a collection] action in AudioWidget widget.
  RevisedDbRecord? revisedDb2;
  // Stores action output result for [Firestore Query - Query a collection] action in AudioWidget widget.
  StartedStoriesRecord? stories2;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  RevisedDbRecord? revisedDb;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  StartedStoriesRecord? stories;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
