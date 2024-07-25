import '/component/monogram/monogram_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'stacked_card_elevated_widget.dart' show StackedCardElevatedWidget;
import 'package:flutter/material.dart';

class StackedCardElevatedModel
    extends FlutterFlowModel<StackedCardElevatedWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for Monogram component.
  late MonogramModel monogramModel;

  @override
  void initState(BuildContext context) {
    monogramModel = createModel(context, () => MonogramModel());
  }

  @override
  void dispose() {
    monogramModel.dispose();
  }
}
