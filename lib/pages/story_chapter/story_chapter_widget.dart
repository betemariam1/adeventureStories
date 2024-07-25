import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'story_chapter_model.dart';
export 'story_chapter_model.dart';

class StoryChapterWidget extends StatefulWidget {
  const StoryChapterWidget({
    super.key,
    required this.chapter,
    required this.pageNumber,
    bool? playing,
  }) : playing = playing ?? true;

  final DocumentReference? chapter;
  final int? pageNumber;
  final bool playing;

  @override
  State<StoryChapterWidget> createState() => _StoryChapterWidgetState();
}

class _StoryChapterWidgetState extends State<StoryChapterWidget> {
  late StoryChapterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoryChapterModel());

    _model.switchValue = true;
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

    return StreamBuilder<ChaptersRecord>(
      stream: ChaptersRecord.getDocument(widget.chapter!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Center(
              child: LinearProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }

        final storyChapterChaptersRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Container(
                decoration: const BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context).alternate,
                              hoverColor: FlutterFlowTheme.of(context).accent4,
                              hoverIconColor:
                                  FlutterFlowTheme.of(context).primary,
                              icon: FaIcon(
                                FontAwesomeIcons.arrowLeft,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                              onPressed: () async {
                                context.pushNamed(
                                  'Home',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType:
                                          PageTransitionType.leftToRight,
                                    ),
                                  },
                                );
                              },
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Autoplay',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              StreamBuilder<List<RevisedDbRecord>>(
                                stream: queryRevisedDbRecord(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: LinearProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    );
                                  }
                                  List<RevisedDbRecord>
                                      switchRevisedDbRecordList =
                                      snapshot.data!;

                                  return Switch.adaptive(
                                    value: _model.switchValue!,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => _model.switchValue = newValue);
                                    },
                                    activeColor:
                                        FlutterFlowTheme.of(context).primary,
                                    activeTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveTrackColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    inactiveThumbColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.95,
                      decoration: const BoxDecoration(),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.95,
                        height: 70.0,
                        child: custom_widgets.AudioWidget(
                          width: MediaQuery.sizeOf(context).width * 0.95,
                          height: 70.0,
                          url: storyChapterChaptersRecord
                              .pages[widget.pageNumber!].narration,
                          title: storyChapterChaptersRecord.storyName,
                          playing: widget.playing,
                          pauseOnNavigate: true,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: CachedNetworkImageProvider(
                                storyChapterChaptersRecord
                                    .pages[widget.pageNumber!].image,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 15.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 1.0),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Visibility(
                                visible: widget.pageNumber != 0,
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 100.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context.pushNamed(
                                        'StoryChapter',
                                        queryParameters: {
                                          'chapter': serializeParam(
                                            widget.chapter,
                                            ParamType.DocumentReference,
                                          ),
                                          'pageNumber': serializeParam(
                                            (widget.pageNumber!) - 1,
                                            ParamType.int,
                                          ),
                                          'playing': serializeParam(
                                            FFAppState().isPlaying,
                                            ParamType.bool,
                                          ),
                                        }.withoutNulls,
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.leftToRight,
                                          ),
                                        },
                                      );
                                    },
                                    text: 'Back',
                                    options: FFButtonOptions(
                                      width: 87.0,
                                      height: 44.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 15.0,
                                            letterSpacing: 2.0,
                                          ),
                                      elevation: 0.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, 1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                if (storyChapterChaptersRecord.pages.length !=
                                    ((widget.pageNumber!) + 1)) {
                                  context.pushNamed(
                                    'StoryChapter',
                                    queryParameters: {
                                      'chapter': serializeParam(
                                        widget.chapter,
                                        ParamType.DocumentReference,
                                      ),
                                      'pageNumber': serializeParam(
                                        (widget.pageNumber!) + 1,
                                        ParamType.int,
                                      ),
                                      'playing': serializeParam(
                                        FFAppState().isPlaying,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                } else {
                                  if (!storyChapterChaptersRecord
                                      .isLastChapter) {
                                    context.pushNamed(
                                      'StoryDecision',
                                      queryParameters: {
                                        'chapter': serializeParam(
                                          widget.chapter,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                        ),
                                      },
                                    );
                                  } else {
                                    context.pushNamed(
                                      'StoryEnd',
                                      queryParameters: {
                                        'currentStory': serializeParam(
                                          storyChapterChaptersRecord.storyId,
                                          ParamType.DocumentReference,
                                        ),
                                      }.withoutNulls,
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.rightToLeft,
                                        ),
                                      },
                                    );
                                  }
                                }
                              },
                              text: 'Next Page',
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 44.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Rubik',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 20.0,
                                      letterSpacing: 2.0,
                                    ),
                                elevation: 3.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                        ],
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
