import '/flutter_flow/flutter_flow_util.dart';
import 'story_page_widget.dart' show StoryPageWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class StoryPageModel extends FlutterFlowModel<StoryPageWidget> {
  ///  Local state fields for this component.

  bool audioPlaying = true;

  ///  State fields for stateful widgets in this component.

  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
