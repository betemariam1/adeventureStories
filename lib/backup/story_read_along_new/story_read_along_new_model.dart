import '/flutter_flow/flutter_flow_util.dart';
import 'story_read_along_new_widget.dart' show StoryReadAlongNewWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class StoryReadAlongNewModel extends FlutterFlowModel<StoryReadAlongNewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
