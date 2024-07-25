import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_item_a2_line_model.dart';
export 'list_item_a2_line_model.dart';

class ListItemA2LineWidget extends StatefulWidget {
  const ListItemA2LineWidget({
    super.key,
    String? headline,
    this.supportingText,
    this.supportinTextContent,
    this.trailingText,
    this.trailingTextContent,
    this.trailingCheckbox,
    this.trailingCheckboxValue,
  }) : headline = headline ?? 'List item';

  final String headline;
  final bool? supportingText;
  final String? supportinTextContent;
  final bool? trailingText;
  final String? trailingTextContent;
  final bool? trailingCheckbox;
  final bool? trailingCheckboxValue;

  @override
  State<ListItemA2LineWidget> createState() => _ListItemA2LineWidgetState();
}

class _ListItemA2LineWidgetState extends State<ListItemA2LineWidget> {
  late ListItemA2LineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListItemA2LineModel());

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
        height: 72.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 24.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
                    Flexible(
                      child: Text(
                        valueOrDefault<String>(
                          widget.supportinTextContent,
                          'Supporting line text lorem ipsum dolor sit amet, consectetur.',
                        ),
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
