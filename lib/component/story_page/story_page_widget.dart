import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'story_page_model.dart';
export 'story_page_model.dart';

class StoryPageWidget extends StatefulWidget {
  const StoryPageWidget({
    super.key,
    required this.storyAudio,
    required this.storyImage,
  });

  final String? storyAudio;
  final String? storyImage;

  @override
  State<StoryPageWidget> createState() => _StoryPageWidgetState();
}

class _StoryPageWidgetState extends State<StoryPageWidget> {
  late StoryPageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoryPageModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().AutoplayNarration == false) {
        _model.soundPlayer1 ??= AudioPlayer();
        if (_model.soundPlayer1!.playing) {
          await _model.soundPlayer1!.stop();
        }
        _model.soundPlayer1!.setVolume(1.0);
        _model.soundPlayer1!
            .setUrl('')
            .then((_) => _model.soundPlayer1!.play());
      } else {
        _model.soundPlayer2?.stop();
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: const BoxDecoration(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.storyImage!,
                width: 300.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (context) {
                if (_model.audioPlaying == false) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      buttonSize: 56.0,
                      fillColor: FlutterFlowTheme.of(context).accent3,
                      hoverColor: FlutterFlowTheme.of(context).accent4,
                      hoverIconColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.play_circle,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 36.0,
                      ),
                      onPressed: () async {
                        _model.soundPlayer2 ??= AudioPlayer();
                        if (_model.soundPlayer2!.playing) {
                          await _model.soundPlayer2!.stop();
                        }
                        _model.soundPlayer2!.setVolume(1.0);
                        _model.soundPlayer2!
                            .setUrl(widget.storyAudio!)
                            .then((_) => _model.soundPlayer2!.play());
                      },
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      buttonSize: 56.0,
                      fillColor: FlutterFlowTheme.of(context).accent3,
                      hoverColor: FlutterFlowTheme.of(context).accent4,
                      hoverIconColor: FlutterFlowTheme.of(context).primary,
                      icon: Icon(
                        Icons.stop_circle,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 36.0,
                      ),
                      onPressed: () async {
                        _model.soundPlayer2?.stop();
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ].divide(const SizedBox(height: 24.0)),
    );
  }
}
