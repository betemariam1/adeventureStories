import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChaptersRecord extends FirestoreRecord {
  ChaptersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "storyId" field.
  DocumentReference? _storyId;
  DocumentReference? get storyId => _storyId;
  bool hasStoryId() => _storyId != null;

  // "chapterNumber" field.
  int? _chapterNumber;
  int get chapterNumber => _chapterNumber ?? 0;
  bool hasChapterNumber() => _chapterNumber != null;

  // "pages" field.
  List<PagesStruct>? _pages;
  List<PagesStruct> get pages => _pages ?? const [];
  bool hasPages() => _pages != null;

  // "optionA" field.
  String? _optionA;
  String get optionA => _optionA ?? '';
  bool hasOptionA() => _optionA != null;

  // "optionB" field.
  String? _optionB;
  String get optionB => _optionB ?? '';
  bool hasOptionB() => _optionB != null;

  // "optionAChapter" field.
  DocumentReference? _optionAChapter;
  DocumentReference? get optionAChapter => _optionAChapter;
  bool hasOptionAChapter() => _optionAChapter != null;

  // "optionBChapter" field.
  DocumentReference? _optionBChapter;
  DocumentReference? get optionBChapter => _optionBChapter;
  bool hasOptionBChapter() => _optionBChapter != null;

  // "decisionPage" field.
  PagesStruct? _decisionPage;
  PagesStruct get decisionPage => _decisionPage ?? PagesStruct();
  bool hasDecisionPage() => _decisionPage != null;

  // "StoryName" field.
  String? _storyName;
  String get storyName => _storyName ?? '';
  bool hasStoryName() => _storyName != null;

  // "isLastChapter" field.
  bool? _isLastChapter;
  bool get isLastChapter => _isLastChapter ?? false;
  bool hasIsLastChapter() => _isLastChapter != null;

  // "StoryID" field.
  DocumentReference? _storyID;
  DocumentReference? get storyID => _storyID;
  bool hasStoryID() => _storyID != null;

  void _initializeFields() {
    _storyId = snapshotData['storyId'] as DocumentReference?;
    _chapterNumber = castToType<int>(snapshotData['chapterNumber']);
    _pages = getStructList(
      snapshotData['pages'],
      PagesStruct.fromMap,
    );
    _optionA = snapshotData['optionA'] as String?;
    _optionB = snapshotData['optionB'] as String?;
    _optionAChapter = snapshotData['optionAChapter'] as DocumentReference?;
    _optionBChapter = snapshotData['optionBChapter'] as DocumentReference?;
    _decisionPage = PagesStruct.maybeFromMap(snapshotData['decisionPage']);
    _storyName = snapshotData['StoryName'] as String?;
    _isLastChapter = snapshotData['isLastChapter'] as bool?;
    _storyID = snapshotData['StoryID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chapters');

  static Stream<ChaptersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChaptersRecord.fromSnapshot(s));

  static Future<ChaptersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChaptersRecord.fromSnapshot(s));

  static ChaptersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChaptersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChaptersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChaptersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChaptersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChaptersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChaptersRecordData({
  DocumentReference? storyId,
  int? chapterNumber,
  String? optionA,
  String? optionB,
  DocumentReference? optionAChapter,
  DocumentReference? optionBChapter,
  PagesStruct? decisionPage,
  String? storyName,
  bool? isLastChapter,
  DocumentReference? storyID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'storyId': storyId,
      'chapterNumber': chapterNumber,
      'optionA': optionA,
      'optionB': optionB,
      'optionAChapter': optionAChapter,
      'optionBChapter': optionBChapter,
      'decisionPage': PagesStruct().toMap(),
      'StoryName': storyName,
      'isLastChapter': isLastChapter,
      'StoryID': storyID,
    }.withoutNulls,
  );

  // Handle nested data for "decisionPage" field.
  addPagesStructData(firestoreData, decisionPage, 'decisionPage');

  return firestoreData;
}

class ChaptersRecordDocumentEquality implements Equality<ChaptersRecord> {
  const ChaptersRecordDocumentEquality();

  @override
  bool equals(ChaptersRecord? e1, ChaptersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.storyId == e2?.storyId &&
        e1?.chapterNumber == e2?.chapterNumber &&
        listEquality.equals(e1?.pages, e2?.pages) &&
        e1?.optionA == e2?.optionA &&
        e1?.optionB == e2?.optionB &&
        e1?.optionAChapter == e2?.optionAChapter &&
        e1?.optionBChapter == e2?.optionBChapter &&
        e1?.decisionPage == e2?.decisionPage &&
        e1?.storyName == e2?.storyName &&
        e1?.isLastChapter == e2?.isLastChapter &&
        e1?.storyID == e2?.storyID;
  }

  @override
  int hash(ChaptersRecord? e) => const ListEquality().hash([
        e?.storyId,
        e?.chapterNumber,
        e?.pages,
        e?.optionA,
        e?.optionB,
        e?.optionAChapter,
        e?.optionBChapter,
        e?.decisionPage,
        e?.storyName,
        e?.isLastChapter,
        e?.storyID
      ]);

  @override
  bool isValidKey(Object? o) => o is ChaptersRecord;
}
