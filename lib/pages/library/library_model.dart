import '/component/nav_segment/nav_segment_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'library_widget.dart' show LibraryWidget;
import 'package:flutter/material.dart';

class LibraryModel extends FlutterFlowModel<LibraryWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for NavSegment component.
  late NavSegmentModel navSegmentModel1;
  // Model for NavSegment component.
  late NavSegmentModel navSegmentModel2;

  @override
  void initState(BuildContext context) {
    navSegmentModel1 = createModel(context, () => NavSegmentModel());
    navSegmentModel2 = createModel(context, () => NavSegmentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    navSegmentModel1.dispose();
    navSegmentModel2.dispose();
  }
}
