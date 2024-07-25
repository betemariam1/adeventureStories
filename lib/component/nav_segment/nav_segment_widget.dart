import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'nav_segment_model.dart';
export 'nav_segment_model.dart';

class NavSegmentWidget extends StatefulWidget {
  const NavSegmentWidget({
    super.key,
    bool? active,
    String? label,
    required this.activeIcon,
    this.inactiveIcon,
    bool? hideLabel,
    this.navigateTo,
  })  : active = active ?? false,
        label = label ?? 'Label',
        hideLabel = hideLabel ?? false;

  final bool active;
  final String label;
  final Widget? activeIcon;
  final Widget? inactiveIcon;
  final bool hideLabel;
  final Future Function()? navigateTo;

  @override
  State<NavSegmentWidget> createState() => _NavSegmentWidgetState();
}

class _NavSegmentWidgetState extends State<NavSegmentWidget>
    with TickerProviderStateMixin {
  late NavSegmentModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavSegmentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget.active) {
        _model.active = true;
        setState(() {});
        return;
      } else {
        _model.active = false;
        setState(() {});
        return;
      }
    });

    animationsMap.addAll({
      'mouseRegionOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          SaturateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 2.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: const Offset(0.3, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
          setState(() => _model.hoverHovered = true);
          _model.hovered = true;
          setState(() {});
        }),
        onExit: ((event) async {
          setState(() => _model.hoverHovered = false);
          _model.hovered = false;
          setState(() {});
        }),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            if (_model.active) {
              return;
            }

            await widget.navigateTo?.call();
            return;
          },
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Stack(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    children: [
                      Opacity(
                        opacity: valueOrDefault<double>(
                          () {
                            if (!_model.active && _model.hovered) {
                              return 0.08;
                            } else if (_model.focused) {
                              return 0.12;
                            } else if (_model.pressed) {
                              return 0.12;
                            } else if (_model.active) {
                              return 1.0;
                            } else {
                              return 1.0;
                            }
                          }(),
                          1.0,
                        ),
                        child: Container(
                          width: 64.0,
                          height: 32.0,
                          decoration: BoxDecoration(
                            color: valueOrDefault<Color>(
                              () {
                                if (!_model.active && _model.hovered) {
                                  return FlutterFlowTheme.of(context).onSurface;
                                } else if (_model.focused) {
                                  return FlutterFlowTheme.of(context).onSurface;
                                } else if (_model.pressed) {
                                  return FlutterFlowTheme.of(context).onSurface;
                                } else if (_model.active) {
                                  return FlutterFlowTheme.of(context)
                                      .secondaryContainer;
                                } else {
                                  return null;
                                }
                              }(),
                              FlutterFlowTheme.of(context).surfContainer,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation']!),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          width: 64.0,
                          height: 32.0,
                          decoration: const BoxDecoration(),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Builder(
                            builder: (context) {
                              if (_model.active) {
                                return widget.activeIcon!;
                              } else {
                                return widget.inactiveIcon!;
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (!widget.hideLabel)
                  Text(
                    widget.label,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Poppins',
                          color: valueOrDefault<Color>(
                            _model.active
                                ? FlutterFlowTheme.of(context)
                                    .onSecondaryContainer
                                : FlutterFlowTheme.of(context).secondaryText,
                            FlutterFlowTheme.of(context).secondaryText,
                          ),
                          letterSpacing: 0.5,
                          lineHeight: 1.3333,
                        ),
                  ),
              ]
                  .divide(const SizedBox(height: 4.0))
                  .addToStart(const SizedBox(height: 12.0))
                  .addToEnd(const SizedBox(height: 16.0)),
            ),
          ),
        ),
      ).animateOnActionTrigger(
        animationsMap['mouseRegionOnActionTriggerAnimation']!,
      ),
    );
  }
}
