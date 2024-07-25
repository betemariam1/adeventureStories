import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_card_mobile_model.dart';
export 'home_card_mobile_model.dart';

class HomeCardMobileWidget extends StatefulWidget {
  const HomeCardMobileWidget({
    super.key,
    required this.storyName,
    required this.storyDescription,
    String? readAlongHeader,
    String? adventureHeader,
    required this.newVisibility,
    required this.smallCard,
    this.isAdventure,
    this.readalongwhatever,
    this.readAlongHeaderVisibility,
    this.selectReference,
    this.fav,
  })  : readAlongHeader = readAlongHeader ?? 'Read Along Story',
        adventureHeader =
            adventureHeader ?? 'Choose Your Own Adventure Story';

  final String? storyName;
  final String? storyDescription;
  final String readAlongHeader;
  final String adventureHeader;
  final bool? newVisibility;
  final String? smallCard;
  final bool? isAdventure;
  final DocumentReference? readalongwhatever;
  final bool? readAlongHeaderVisibility;
  final DocumentReference? selectReference;
  final DocumentReference? fav;

  @override
  State<HomeCardMobileWidget> createState() => _HomeCardMobileWidgetState();
}

class _HomeCardMobileWidgetState extends State<HomeCardMobileWidget> {
  late HomeCardMobileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeCardMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        if (widget.isAdventure!) {
        } else {
          context.pushNamed(
            'StoryReadAlongNew',
            queryParameters: {
              'readAlongDocRef': serializeParam(
                widget.readalongwhatever,
                ParamType.DocumentReference,
              ),
            }.withoutNulls,
          );
        }
      },
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget.readAlongHeaderVisibility == true)
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          height: 29.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            widget.adventureHeader,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget.readAlongHeaderVisibility == false)
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          height: 29.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            widget.readAlongHeader,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.storyName,
                            'storyname',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            widget.smallCard!,
                            width: double.infinity,
                            height: 220.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    if (widget.newVisibility ?? true)
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/NewPurple001.gif',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.95),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 175.0, 20.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.24, 0.2),
                              child: FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context).accent1,
                                icon: FaIcon(
                                  FontAwesomeIcons.heart,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  await currentUserReference!.update({
                                    ...mapToFirestore(
                                      {
                                        'favorited': FieldValue.arrayUnion(
                                            [widget.selectReference]),
                                      },
                                    ),
                                  });
                                  // Add to Library

                                  await widget.selectReference!.update({
                                    ...mapToFirestore(
                                      {
                                        'IsFavoritedByUser':
                                            FieldValue.arrayUnion(
                                                [currentUserReference]),
                                      },
                                    ),
                                  });
                                },
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.9, 0.2),
                              child: FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                borderRadius: 20.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor: FlutterFlowTheme.of(context).accent1,
                                icon: FaIcon(
                                  FontAwesomeIcons.solidHeart,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  await currentUserReference!.update({
                                    ...mapToFirestore(
                                      {
                                        'favorited': FieldValue.arrayRemove(
                                            [widget.selectReference]),
                                      },
                                    ),
                                  });
                                  // RemoveFromLibrary

                                  await widget.selectReference!.update({
                                    ...mapToFirestore(
                                      {
                                        'IsFavoritedByUser':
                                            FieldValue.arrayRemove(
                                                [currentUserReference]),
                                      },
                                    ),
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.storyDescription,
                            'storyDescription',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Poppins',
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
