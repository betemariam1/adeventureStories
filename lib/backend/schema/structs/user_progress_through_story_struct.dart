// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserProgressThroughStoryStruct extends FFFirebaseStruct {
  UserProgressThroughStoryStruct({
    DocumentReference? userRef,
    DocumentReference? chapterRef,
    int? pageNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userRef = userRef,
        _chapterRef = chapterRef,
        _pageNumber = pageNumber,
        super(firestoreUtilData);

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? val) => _userRef = val;

  bool hasUserRef() => _userRef != null;

  // "chapterRef" field.
  DocumentReference? _chapterRef;
  DocumentReference? get chapterRef => _chapterRef;
  set chapterRef(DocumentReference? val) => _chapterRef = val;

  bool hasChapterRef() => _chapterRef != null;

  // "pageNumber" field.
  int? _pageNumber;
  int get pageNumber => _pageNumber ?? 0;
  set pageNumber(int? val) => _pageNumber = val;

  void incrementPageNumber(int amount) => pageNumber = pageNumber + amount;

  bool hasPageNumber() => _pageNumber != null;

  static UserProgressThroughStoryStruct fromMap(Map<String, dynamic> data) =>
      UserProgressThroughStoryStruct(
        userRef: data['userRef'] as DocumentReference?,
        chapterRef: data['chapterRef'] as DocumentReference?,
        pageNumber: castToType<int>(data['pageNumber']),
      );

  static UserProgressThroughStoryStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? UserProgressThroughStoryStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'userRef': _userRef,
        'chapterRef': _chapterRef,
        'pageNumber': _pageNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userRef': serializeParam(
          _userRef,
          ParamType.DocumentReference,
        ),
        'chapterRef': serializeParam(
          _chapterRef,
          ParamType.DocumentReference,
        ),
        'pageNumber': serializeParam(
          _pageNumber,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserProgressThroughStoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserProgressThroughStoryStruct(
        userRef: deserializeParam(
          data['userRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        chapterRef: deserializeParam(
          data['chapterRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['chapters'],
        ),
        pageNumber: deserializeParam(
          data['pageNumber'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserProgressThroughStoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserProgressThroughStoryStruct &&
        userRef == other.userRef &&
        chapterRef == other.chapterRef &&
        pageNumber == other.pageNumber;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([userRef, chapterRef, pageNumber]);
}

UserProgressThroughStoryStruct createUserProgressThroughStoryStruct({
  DocumentReference? userRef,
  DocumentReference? chapterRef,
  int? pageNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserProgressThroughStoryStruct(
      userRef: userRef,
      chapterRef: chapterRef,
      pageNumber: pageNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserProgressThroughStoryStruct? updateUserProgressThroughStoryStruct(
  UserProgressThroughStoryStruct? userProgressThroughStory, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userProgressThroughStory
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserProgressThroughStoryStructData(
  Map<String, dynamic> firestoreData,
  UserProgressThroughStoryStruct? userProgressThroughStory,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userProgressThroughStory == null) {
    return;
  }
  if (userProgressThroughStory.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      userProgressThroughStory.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userProgressThroughStoryData = getUserProgressThroughStoryFirestoreData(
      userProgressThroughStory, forFieldValue);
  final nestedData =
      userProgressThroughStoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      userProgressThroughStory.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserProgressThroughStoryFirestoreData(
  UserProgressThroughStoryStruct? userProgressThroughStory, [
  bool forFieldValue = false,
]) {
  if (userProgressThroughStory == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userProgressThroughStory.toMap());

  // Add any Firestore field values
  userProgressThroughStory.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserProgressThroughStoryListFirestoreData(
  List<UserProgressThroughStoryStruct>? userProgressThroughStorys,
) =>
    userProgressThroughStorys
        ?.map((e) => getUserProgressThroughStoryFirestoreData(e, true))
        .toList() ??
    [];
