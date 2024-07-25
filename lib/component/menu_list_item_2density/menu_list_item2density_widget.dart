import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_list_item2density_model.dart';
export 'menu_list_item2density_model.dart';

class MenuListItem2densityWidget extends StatefulWidget {
  const MenuListItem2densityWidget({
    super.key,
    this.leadingElement,
    this.leadingIcon,
    required this.labelText,
    this.trailingIconActive,
    this.trailingIcon,
    this.trailingTextActive,
    this.trailingText,
  });

  final bool? leadingElement;
  final Widget? leadingIcon;
  final String? labelText;
  final bool? trailingIconActive;
  final Widget? trailingIcon;
  final bool? trailingTextActive;
  final String? trailingText;

  @override
  State<MenuListItem2densityWidget> createState() =>
      _MenuListItem2densityWidgetState();
}

class _MenuListItem2densityWidgetState
    extends State<MenuListItem2densityWidget> {
  late MenuListItem2densityModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuListItem2densityModel());

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
      child: MouseRegion(
        opaque: false,
        cursor: MouseCursor.defer ?? MouseCursor.defer,
        onEnter: ((event) async {
          setState(() => _model.mouseRegionHovered = true);
        }),
        onExit: ((event) async {
          setState(() => _model.mouseRegionHovered = false);
        }),
        child: Stack(
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.selected = false;
                setState(() {});
              },
              child: Container(
                height: 48.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    _model.selected!
                        ? FlutterFlowTheme.of(context).surfContainerHighest
                        : FlutterFlowTheme.of(context).surfContainer,
                    FlutterFlowTheme.of(context).surfContainer,
                  ),
                ),
              ),
            ),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (widget.leadingElement ?? true)
                      Container(
                        decoration: const BoxDecoration(),
                        child: widget.leadingIcon!,
                      ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            widget.labelText!,
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.5,
                                      lineHeight: 1.5,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (widget.trailingIconActive ?? true)
                          widget.trailingIcon!,
                        if (widget.trailingTextActive ?? true)
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: Text(
                              widget.trailingText!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .onSurfaceVariant,
                                    letterSpacing: 0.5,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                      ],
                    ),
                  ].divide(const SizedBox(width: 12.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
