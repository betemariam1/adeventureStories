import '/component/video_thumbnail/video_thumbnail_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_item05_model.dart';
export 'list_item05_model.dart';

class ListItem05Widget extends StatefulWidget {
  const ListItem05Widget({
    super.key,
    this.leadingVideoThmbnail,
    String? headline,
    this.supportingText,
    String? supportinTextContent,
    this.trailingCheckbox,
    this.trailingCheckboxValue,
  })  : headline = headline ?? 'List item',
        supportinTextContent = supportinTextContent ??
            'Supporting line text lorem ipsum dolor sit amet, consectetur.';

  final bool? leadingVideoThmbnail;
  final String headline;
  final bool? supportingText;
  final String supportinTextContent;
  final bool? trailingCheckbox;
  final bool? trailingCheckboxValue;

  @override
  State<ListItem05Widget> createState() => _ListItem05WidgetState();
}

class _ListItem05WidgetState extends State<ListItem05Widget> {
  late ListItem05Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListItem05Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 24.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  wrapWithModel(
                    model: _model.videoThumbnailModel,
                    updateCallback: () => setState(() {}),
                    child: const VideoThumbnailWidget(),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.headline,
                        'List Item',
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.5,
                            lineHeight: 1.5,
                          ),
                    ),
                    if (widget.supportingText ?? true)
                      Flexible(
                        child: Text(
                          valueOrDefault<String>(
                            widget.supportinTextContent,
                            'Supporting line text lorem ipsum dolor sit amet, consectetur.',
                          ),
                          maxLines: 2,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.25,
                                lineHeight: 1.428,
                              ),
                        ),
                      ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Text(
                      '100+',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w500,
                            lineHeight: 1.4545,
                          ),
                    ),
                  if (widget.trailingCheckbox ?? true)
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.checkboxValue ??=
                            widget.trailingCheckboxValue!,
                        onChanged: (newValue) async {
                          setState(() => _model.checkboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).primary,
                        checkColor: FlutterFlowTheme.of(context).onPrimary,
                      ),
                    ),
                ],
              ),
            ].divide(const SizedBox(width: 16.0)),
          ),
        ),
      ),
    );
  }
}
