import '/flutter_flow/flutter_flow_util.dart';
import 'settings_terms_widget.dart' show SettingsTermsWidget;
import 'package:flutter/material.dart';

class SettingsTermsModel extends FlutterFlowModel<SettingsTermsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
