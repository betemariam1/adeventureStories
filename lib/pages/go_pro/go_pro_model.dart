import '/flutter_flow/flutter_flow_util.dart';
import 'go_pro_widget.dart' show GoProWidget;
import 'package:flutter/material.dart';

class GoProModel extends FlutterFlowModel<GoProWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
