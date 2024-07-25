import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'story_read_along_new_model.dart';
export 'story_read_along_new_model.dart';

class StoryReadAlongNewWidget extends StatefulWidget {
  const StoryReadAlongNewWidget({
    super.key,
    required this.readAlongDocRef,
    this.audioParameter,
    this.audioDocReference,
    this.readAlongNarration,
  });

  final DocumentReference? readAlongDocRef;
  final ReadAlongStoriesRecord? audioParameter;
  final ReadAlongStoriesRecord? audioDocReference;
  final String? readAlongNarration;

  @override
  State<StoryReadAlongNewWidget> createState() =>
      _StoryReadAlongNewWidgetState();
}

class _StoryReadAlongNewWidgetState extends State<StoryReadAlongNewWidget> {
  late StoryReadAlongNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoryReadAlongNewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().AutoplayNarration) {
        _model.soundPlayer?.stop();
      } else {
        _model.soundPlayer ??= AudioPlayer();
        if (_model.soundPlayer!.playing) {
          await _model.soundPlayer!.stop();
        }
        _model.soundPlayer!.setVolume(1.0);
        _model.soundPlayer!
            .setUrl(widget.audioDocReference!.fullStoryIntroAudio)
            .then((_) => _model.soundPlayer!.play());
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<ReadAlongStoriesRecord>(
      stream: ReadAlongStoriesRecord.getDocument(widget.readAlongDocRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: LinearProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }

        final storyReadAlongNewReadAlongStoriesRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsets.all(4.0),
                child: FlutterFlowIconButton(
                  borderColor: FlutterFlowTheme.of(context).outline,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  fillColor: Colors.transparent,
                  hoverColor: FlutterFlowTheme.of(context).accent2,
                  hoverIconColor: FlutterFlowTheme.of(context).onSurfaceVariant,
                  icon: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: FlutterFlowTheme.of(context).onSurfaceVariant,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
              ),
              actions: const [],
              centerTitle: false,
            ),
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            storyReadAlongNewReadAlongStoriesRecord
                                .fullStoryChapter1Image,
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.823,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            storyReadAlongNewReadAlongStoriesRecord
                                .fullStoryChapter1Image,
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.653,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 30.0, 15.0, 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('Home');
                              },
                              text: 'Back',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Colors.transparent,
                                textStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(100.0),
                                hoverColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                hoverElevation: 0.0,
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed(
                                  'StoryReadAlongPage2',
                                  queryParameters: {
                                    'readAlongDocumentReference1':
                                        serializeParam(
                                      storyReadAlongNewReadAlongStoriesRecord
                                          .reference,
                                      ParamType.DocumentReference,
                                    ),
                                    'audioDocReference': serializeParam(
                                      widget.audioParameter,
                                      ParamType.Document,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'audioDocReference': widget.audioParameter,
                                  },
                                );
                              },
                              text: 'Next Page',
                              options: FFButtonOptions(
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
