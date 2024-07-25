import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'monogram_model.dart';
export 'monogram_model.dart';

class MonogramWidget extends StatefulWidget {
  const MonogramWidget({
    super.key,
    this.fillColor,
    this.textColor,
    String? initial,
  }) : initial = initial ?? 'A';

  final Color? fillColor;
  final Color? textColor;
  final String initial;

  @override
  State<MonogramWidget> createState() => _MonogramWidgetState();
}

class _MonogramWidgetState extends State<MonogramWidget> {
  late MonogramModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MonogramModel());

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
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          color: widget.fillColor,
          borderRadius: BorderRadius.circular(100.0),
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Text(
            valueOrDefault<String>(
              widget.initial,
              'A',
            ).maybeHandleOverflow(maxChars: 1),
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Poppins',
                  color: widget.textColor,
                  letterSpacing: 0.15,
                  lineHeight: 1.428,
                ),
          ),
        ),
      ),
    );
  }
}
