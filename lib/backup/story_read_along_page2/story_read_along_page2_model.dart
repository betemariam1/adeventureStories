import '/flutter_flow/flutter_flow_util.dart';
import 'story_read_along_page2_widget.dart' show StoryReadAlongPage2Widget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class StoryReadAlongPage2Model
    extends FlutterFlowModel<StoryReadAlongPage2Widget> {
  ///  Local state fields for this page.

  bool localPageStatePlayAudio = true;

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
