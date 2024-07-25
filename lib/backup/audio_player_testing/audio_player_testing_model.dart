import '/component/audio_player/audio_player_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'audio_player_testing_widget.dart' show AudioPlayerTestingWidget;
import 'package:flutter/material.dart';

class AudioPlayerTestingModel
    extends FlutterFlowModel<AudioPlayerTestingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for audioPlayer component.
  late AudioPlayerModel audioPlayerModel;

  @override
  void initState(BuildContext context) {
    audioPlayerModel = createModel(context, () => AudioPlayerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    audioPlayerModel.dispose();
  }
}
