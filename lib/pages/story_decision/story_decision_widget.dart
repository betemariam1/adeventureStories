import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'story_decision_model.dart';
export 'story_decision_model.dart';

class StoryDecisionWidget extends StatefulWidget {
  const StoryDecisionWidget({
    super.key,
    required this.chapter,
    this.page,
    required this.isAdventureStory,
  });

  final DocumentReference? chapter;
  final int? page;
  final bool? isAdventureStory;

  @override
  State<StoryDecisionWidget> createState() => _StoryDecisionWidgetState();
}

class _StoryDecisionWidgetState extends State<StoryDecisionWidget> {
  late StoryDecisionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StoryDecisionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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

        final storyDecisionChaptersRecord = snapshot.data!;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                buttonSize: 50.0,
                                fillColor:
                                    FlutterFlowTheme.of(context).alternate,
                                hoverColor:
                                    FlutterFlowTheme.of(context).primary,
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
                        url: valueOrDefault<String>(
                          storyDecisionChaptersRecord.decisionPage.narration,
                          '1',
                        ),
                        title: storyDecisionChaptersRecord.storyName,
                        playing: true,
                        pauseOnNavigate: true,
                        isAdventureStories: true,
                        autoPlay: false,
                        onCallAction: () async {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                        ))
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                storyDecisionChaptersRecord.decisionPage.image,
                                width: double.infinity,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.722,
                                fit: BoxFit.fill,
                                alignment: const Alignment(0.0, 0.0),
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
                            padding: const EdgeInsets.all(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                storyDecisionChaptersRecord.decisionPage.image,
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.642,
                                fit: BoxFit.fill,
                                alignment: const Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'StoryChapter',
                                    queryParameters: {
                                      'chapter': serializeParam(
                                        storyDecisionChaptersRecord
                                            .optionAChapter,
                                        ParamType.DocumentReference,
                                      ),
                                      'pageNumber': serializeParam(
                                        0,
                                        ParamType.int,
                                      ),
                                      'isAdventureStory': serializeParam(
                                        false,
                                        ParamType.bool,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.34,
                                  decoration: const BoxDecoration(),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'StoryChapter',
                                      queryParameters: {
                                        'chapter': serializeParam(
                                          storyDecisionChaptersRecord
                                              .optionBChapter,
                                          ParamType.DocumentReference,
                                        ),
                                        'pageNumber': serializeParam(
                                          0,
                                          ParamType.int,
                                        ),
                                        'playing': serializeParam(
                                          false,
                                          ParamType.bool,
                                        ),
                                        'isAdventureStory': serializeParam(
                                          widget.isAdventureStory,
                                          ParamType.bool,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.326,
                                    decoration: const BoxDecoration(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-0.47, 0.95),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/TapIconA.gif',
                            width: 50.0,
                            height: 60.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-0.01, -0.01),
                        child: Text(
                          'Tap on a cloud.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
