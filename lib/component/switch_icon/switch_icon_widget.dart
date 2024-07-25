import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'switch_icon_model.dart';
export 'switch_icon_model.dart';

class SwitchIconWidget extends StatefulWidget {
  const SwitchIconWidget({
    super.key,
    required this.disabled,
  });

  final bool? disabled;

  @override
  State<SwitchIconWidget> createState() => _SwitchIconWidgetState();
}

class _SwitchIconWidgetState extends State<SwitchIconWidget>
    with TickerProviderStateMixin {
  late SwitchIconModel _model;

  var hasContainerTriggered1 = false;
  var hasContainerTriggered2 = false;
  var hasContainerTriggered3 = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwitchIconModel());

    animationsMap.addAll({
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: const Offset(20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 150.0.ms,
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
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
      child: Stack(
        children: [
          if ((_model.switchON == false) && (widget.disabled == false))
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                setState(() {});
                if (animationsMap['containerOnActionTriggerAnimation3'] !=
                    null) {
                  setState(() => hasContainerTriggered3 = true);
                  SchedulerBinding.instance.addPostFrameCallback((_) async =>
                      await animationsMap['containerOnActionTriggerAnimation3']!
                          .controller
                          .forward(from: 0.0));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Container(
                  width: 52.0,
                  height: 32.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent4,
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).outline,
                      width: 2.0,
                    ),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(-0.75, 0.0),
                    child: Container(
                      width: 16.0,
                      height: 16.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).outline,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x430B0D0F),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.close_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 12.0,
                      ),
                    ).animateOnActionTrigger(
                        animationsMap['containerOnActionTriggerAnimation1']!,
                        hasBeenTriggered: hasContainerTriggered1),
                  ),
                ),
              ),
            ),
          if (((_model.switchON == true) && (widget.disabled == false)) &&
              responsiveVisibility(
                context: context,
                desktop: false,
              ))
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.switchON = false;
                setState(() {});
                if (animationsMap['containerOnActionTriggerAnimation1'] !=
                    null) {
                  setState(() => hasContainerTriggered1 = true);
                  SchedulerBinding.instance.addPostFrameCallback((_) async =>
                      await animationsMap['containerOnActionTriggerAnimation1']!
                          .controller
                          .forward(from: 0.0));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Container(
                  width: 52.0,
                  height: 32.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: Align(
                    alignment: const AlignmentDirectional(0.75, 0.0),
                    child: Container(
                      width: 28.0,
                      height: 28.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).onPrimary,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x430B0D0F),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.check,
                        color: FlutterFlowTheme.of(context).onPrimaryContainer,
                        size: 12.0,
                      ),
                    ).animateOnActionTrigger(
                        animationsMap['containerOnActionTriggerAnimation2']!,
                        hasBeenTriggered: hasContainerTriggered2),
                  ),
                ),
              ),
            ),
          if (widget.disabled == true)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Container(
                width: 52.0,
                height: 32.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).disabledBackground,
                  borderRadius: BorderRadius.circular(200.0),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.75, 0.0),
                  child: Container(
                    width: 28.0,
                    height: 28.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x430B0D0F),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check,
                      color: FlutterFlowTheme.of(context).disabledText,
                      size: 12.0,
                    ),
                  ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation3']!,
                      hasBeenTriggered: hasContainerTriggered3),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
