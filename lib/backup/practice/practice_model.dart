import '/flutter_flow/flutter_flow_util.dart';
import 'practice_widget.dart' show PracticeWidget;
import 'package:flutter/material.dart';

class PracticeModel extends FlutterFlowModel<PracticeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
