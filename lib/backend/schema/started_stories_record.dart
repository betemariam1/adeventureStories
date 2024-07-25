import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StartedStoriesRecord extends FirestoreRecord {
  StartedStoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "chapterReference" field.
  DocumentReference? _chapterReference;
  DocumentReference? get chapterReference => _chapterReference;
  bool hasChapterReference() => _chapterReference != null;

  // "chapterNumber" field.
  int? _chapterNumber;
  int get chapterNumber => _chapterNumber ?? 0;
  bool hasChapterNumber() => _chapterNumber != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "revisedDbRef" field.
  DocumentReference? _revisedDbRef;
  DocumentReference? get revisedDbRef => _revisedDbRef;
  bool hasRevisedDbRef() => _revisedDbRef != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _chapterReference = snapshotData['chapterReference'] as DocumentReference?;
    _chapterNumber = castToType<int>(snapshotData['chapterNumber']);
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _revisedDbRef = snapshotData['revisedDbRef'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('startedStories')
          : FirebaseFirestore.instance.collectionGroup('startedStories');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('startedStories').doc(id);

  static Stream<StartedStoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StartedStoriesRecord.fromSnapshot(s));

  static Future<StartedStoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StartedStoriesRecord.fromSnapshot(s));

  static StartedStoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StartedStoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StartedStoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StartedStoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StartedStoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StartedStoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStartedStoriesRecordData({
  DocumentReference? chapterReference,
  int? chapterNumber,
  DateTime? createdDate,
  DocumentReference? revisedDbRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'chapterReference': chapterReference,
      'chapterNumber': chapterNumber,
      'createdDate': createdDate,
      'revisedDbRef': revisedDbRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class StartedStoriesRecordDocumentEquality
    implements Equality<StartedStoriesRecord> {
  const StartedStoriesRecordDocumentEquality();

  @override
  bool equals(StartedStoriesRecord? e1, StartedStoriesRecord? e2) {
    return e1?.chapterReference == e2?.chapterReference &&
        e1?.chapterNumber == e2?.chapterNumber &&
        e1?.createdDate == e2?.createdDate &&
        e1?.revisedDbRef == e2?.revisedDbRef;
  }

  @override
  int hash(StartedStoriesRecord? e) => const ListEquality().hash(
      [e?.chapterReference, e?.chapterNumber, e?.createdDate, e?.revisedDbRef]);

  @override
  bool isValidKey(Object? o) => o is StartedStoriesRecord;
}
