import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'narration_toggle_model.dart';
export 'narration_toggle_model.dart';

class NarrationToggleWidget extends StatefulWidget {
  const NarrationToggleWidget({super.key});

  @override
  State<NarrationToggleWidget> createState() => _NarrationToggleWidgetState();
}

class _NarrationToggleWidgetState extends State<NarrationToggleWidget> {
  late NarrationToggleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NarrationToggleModel());

    _model.switchValue = FFAppState().AutoplayNarration;
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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: Switch.adaptive(
        value: _model.switchValue!,
        onChanged: (newValue) async {
          setState(() => _model.switchValue = newValue);
          if (newValue) {
            FFAppState().AutoplayNarration = false;
            setState(() {});
          } else {
            FFAppState().AutoplayNarration = true;
            setState(() {});
          }
        },
        activeColor: FlutterFlowTheme.of(context).primary,
        activeTrackColor: FlutterFlowTheme.of(context).secondaryBackground,
        inactiveTrackColor: FlutterFlowTheme.of(context).primary,
        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
