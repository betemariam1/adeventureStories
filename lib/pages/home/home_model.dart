import '/backend/backend.dart';
import '/component/nav_segment/nav_segment_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  bool isShowFullList = true;

  bool searchEmpty = true;

  List<DocumentReference> likedStories = [];
  void addToLikedStories(DocumentReference item) => likedStories.add(item);
  void removeFromLikedStories(DocumentReference item) =>
      likedStories.remove(item);
  void removeAtIndexFromLikedStories(int index) => likedStories.removeAt(index);
  void insertAtIndexInLikedStories(int index, DocumentReference item) =>
      likedStories.insert(index, item);
  void updateLikedStoriesAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      likedStories[index] = updateFn(likedStories[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  FocusNode? searchBarFocusNode;
  TextEditingController? searchBarTextController;
  String? Function(BuildContext, String?)? searchBarTextControllerValidator;
  List<RevisedDbRecord> simpleSearchResults = [];
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
    searchBarFocusNode?.dispose();
    searchBarTextController?.dispose();

    tabBarController?.dispose();
    navSegmentModel1.dispose();
    navSegmentModel2.dispose();
  }
}
