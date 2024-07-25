import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RevisedDbRecord extends FirestoreRecord {
  RevisedDbRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "StoryName" field.
  String? _storyName;
  String get storyName => _storyName ?? '';
  bool hasStoryName() => _storyName != null;

  // "Length" field.
  String? _length;
  String get length => _length ?? '';
  bool hasLength() => _length != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Card_Image_Small" field.
  String? _cardImageSmall;
  String get cardImageSmall => _cardImageSmall ?? '';
  bool hasCardImageSmall() => _cardImageSmall != null;

  // "Card_Image_Long" field.
  String? _cardImageLong;
  String get cardImageLong => _cardImageLong ?? '';
  bool hasCardImageLong() => _cardImageLong != null;

  // "ReadingLevel" field.
  String? _readingLevel;
  String get readingLevel => _readingLevel ?? '';
  bool hasReadingLevel() => _readingLevel != null;

  // "CreateDate" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  // "Is_Favorite" field.
  bool? _isFavorite;
  bool get isFavorite => _isFavorite ?? false;
  bool hasIsFavorite() => _isFavorite != null;

  // "Is_New" field.
  bool? _isNew;
  bool get isNew => _isNew ?? false;
  bool hasIsNew() => _isNew != null;

  // "Is_Free" field.
  bool? _isFree;
  bool get isFree => _isFree ?? false;
  bool hasIsFree() => _isFree != null;

  // "Is_Adventure" field.
  bool? _isAdventure;
  bool get isAdventure => _isAdventure ?? false;
  bool hasIsAdventure() => _isAdventure != null;

  // "Is_ReadAlong" field.
  bool? _isReadAlong;
  bool get isReadAlong => _isReadAlong ?? false;
  bool hasIsReadAlong() => _isReadAlong != null;

  // "Is_Finished" field.
  bool? _isFinished;
  bool get isFinished => _isFinished ?? false;
  bool hasIsFinished() => _isFinished != null;

  // "Is_Chapterbook" field.
  bool? _isChapterbook;
  bool get isChapterbook => _isChapterbook ?? false;
  bool hasIsChapterbook() => _isChapterbook != null;

  // "Is_Mia_Marley" field.
  bool? _isMiaMarley;
  bool get isMiaMarley => _isMiaMarley ?? false;
  bool hasIsMiaMarley() => _isMiaMarley != null;

  // "Is_Carl_Ruby" field.
  bool? _isCarlRuby;
  bool get isCarlRuby => _isCarlRuby ?? false;
  bool hasIsCarlRuby() => _isCarlRuby != null;

  // "Category" field.
  List<String>? _category;
  List<String> get category => _category ?? const [];
  bool hasCategory() => _category != null;

  // "Language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "HideAdventureStories" field.
  bool? _hideAdventureStories;
  bool get hideAdventureStories => _hideAdventureStories ?? false;
  bool hasHideAdventureStories() => _hideAdventureStories != null;

  // "IsFavoritedByUser" field.
  List<DocumentReference>? _isFavoritedByUser;
  List<DocumentReference> get isFavoritedByUser =>
      _isFavoritedByUser ?? const [];
  bool hasIsFavoritedByUser() => _isFavoritedByUser != null;

  // "ReadAlongStories" field.
  List<DocumentReference>? _readAlongStories;
  List<DocumentReference> get readAlongStories => _readAlongStories ?? const [];
  bool hasReadAlongStories() => _readAlongStories != null;

  // "Readalongwhatever" field.
  DocumentReference? _readalongwhatever;
  DocumentReference? get readalongwhatever => _readalongwhatever;
  bool hasReadalongwhatever() => _readalongwhatever != null;

  // "chapterRef" field.
  DocumentReference? _chapterRef;
  DocumentReference? get chapterRef => _chapterRef;
  bool hasChapterRef() => _chapterRef != null;

  // "music" field.
  String? _music;
  String get music => _music ?? '';
  bool hasMusic() => _music != null;

  // "userProgres" field.
  List<UserProgressThroughStoryStruct>? _userProgres;
  List<UserProgressThroughStoryStruct> get userProgres =>
      _userProgres ?? const [];
  bool hasUserProgres() => _userProgres != null;

  // "IsStarted" field.
  List<DocumentReference>? _isStarted;
  List<DocumentReference> get isStarted => _isStarted ?? const [];
  bool hasIsStarted() => _isStarted != null;

  void _initializeFields() {
    _storyName = snapshotData['StoryName'] as String?;
    _length = snapshotData['Length'] as String?;
    _description = snapshotData['Description'] as String?;
    _cardImageSmall = snapshotData['Card_Image_Small'] as String?;
    _cardImageLong = snapshotData['Card_Image_Long'] as String?;
    _readingLevel = snapshotData['ReadingLevel'] as String?;
    _createDate = snapshotData['CreateDate'] as DateTime?;
    _isFavorite = snapshotData['Is_Favorite'] as bool?;
    _isNew = snapshotData['Is_New'] as bool?;
    _isFree = snapshotData['Is_Free'] as bool?;
    _isAdventure = snapshotData['Is_Adventure'] as bool?;
    _isReadAlong = snapshotData['Is_ReadAlong'] as bool?;
    _isFinished = snapshotData['Is_Finished'] as bool?;
    _isChapterbook = snapshotData['Is_Chapterbook'] as bool?;
    _isMiaMarley = snapshotData['Is_Mia_Marley'] as bool?;
    _isCarlRuby = snapshotData['Is_Carl_Ruby'] as bool?;
    _category = getDataList(snapshotData['Category']);
    _language = snapshotData['Language'] as String?;
    _hideAdventureStories = snapshotData['HideAdventureStories'] as bool?;
    _isFavoritedByUser = getDataList(snapshotData['IsFavoritedByUser']);
    _readAlongStories = getDataList(snapshotData['ReadAlongStories']);
    _readalongwhatever =
        snapshotData['Readalongwhatever'] as DocumentReference?;
    _chapterRef = snapshotData['chapterRef'] as DocumentReference?;
    _music = snapshotData['music'] as String?;
    _userProgres = getStructList(
      snapshotData['userProgres'],
      UserProgressThroughStoryStruct.fromMap,
    );
    _isStarted = getDataList(snapshotData['IsStarted']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RevisedDb');

  static Stream<RevisedDbRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RevisedDbRecord.fromSnapshot(s));

  static Future<RevisedDbRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RevisedDbRecord.fromSnapshot(s));

  static RevisedDbRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RevisedDbRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RevisedDbRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RevisedDbRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RevisedDbRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RevisedDbRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRevisedDbRecordData({
  String? storyName,
  String? length,
  String? description,
  String? cardImageSmall,
  String? cardImageLong,
  String? readingLevel,
  DateTime? createDate,
  bool? isFavorite,
  bool? isNew,
  bool? isFree,
  bool? isAdventure,
  bool? isReadAlong,
  bool? isFinished,
  bool? isChapterbook,
  bool? isMiaMarley,
  bool? isCarlRuby,
  String? language,
  bool? hideAdventureStories,
  DocumentReference? readalongwhatever,
  DocumentReference? chapterRef,
  String? music,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'StoryName': storyName,
      'Length': length,
      'Description': description,
      'Card_Image_Small': cardImageSmall,
      'Card_Image_Long': cardImageLong,
      'ReadingLevel': readingLevel,
      'CreateDate': createDate,
      'Is_Favorite': isFavorite,
      'Is_New': isNew,
      'Is_Free': isFree,
      'Is_Adventure': isAdventure,
      'Is_ReadAlong': isReadAlong,
      'Is_Finished': isFinished,
      'Is_Chapterbook': isChapterbook,
      'Is_Mia_Marley': isMiaMarley,
      'Is_Carl_Ruby': isCarlRuby,
      'Language': language,
      'HideAdventureStories': hideAdventureStories,
      'Readalongwhatever': readalongwhatever,
      'chapterRef': chapterRef,
      'music': music,
    }.withoutNulls,
  );

  return firestoreData;
}

class RevisedDbRecordDocumentEquality implements Equality<RevisedDbRecord> {
  const RevisedDbRecordDocumentEquality();

  @override
  bool equals(RevisedDbRecord? e1, RevisedDbRecord? e2) {
    const listEquality = ListEquality();
    return e1?.storyName == e2?.storyName &&
        e1?.length == e2?.length &&
        e1?.description == e2?.description &&
        e1?.cardImageSmall == e2?.cardImageSmall &&
        e1?.cardImageLong == e2?.cardImageLong &&
        e1?.readingLevel == e2?.readingLevel &&
        e1?.createDate == e2?.createDate &&
        e1?.isFavorite == e2?.isFavorite &&
        e1?.isNew == e2?.isNew &&
        e1?.isFree == e2?.isFree &&
        e1?.isAdventure == e2?.isAdventure &&
        e1?.isReadAlong == e2?.isReadAlong &&
        e1?.isFinished == e2?.isFinished &&
        e1?.isChapterbook == e2?.isChapterbook &&
        e1?.isMiaMarley == e2?.isMiaMarley &&
        e1?.isCarlRuby == e2?.isCarlRuby &&
        listEquality.equals(e1?.category, e2?.category) &&
        e1?.language == e2?.language &&
        e1?.hideAdventureStories == e2?.hideAdventureStories &&
        listEquality.equals(e1?.isFavoritedByUser, e2?.isFavoritedByUser) &&
        listEquality.equals(e1?.readAlongStories, e2?.readAlongStories) &&
        e1?.readalongwhatever == e2?.readalongwhatever &&
        e1?.chapterRef == e2?.chapterRef &&
        e1?.music == e2?.music &&
        listEquality.equals(e1?.userProgres, e2?.userProgres) &&
        listEquality.equals(e1?.isStarted, e2?.isStarted);
  }

  @override
  int hash(RevisedDbRecord? e) => const ListEquality().hash([
        e?.storyName,
        e?.length,
        e?.description,
        e?.cardImageSmall,
        e?.cardImageLong,
        e?.readingLevel,
        e?.createDate,
        e?.isFavorite,
        e?.isNew,
        e?.isFree,
        e?.isAdventure,
        e?.isReadAlong,
        e?.isFinished,
        e?.isChapterbook,
        e?.isMiaMarley,
        e?.isCarlRuby,
        e?.category,
        e?.language,
        e?.hideAdventureStories,
        e?.isFavoritedByUser,
        e?.readAlongStories,
        e?.readalongwhatever,
        e?.chapterRef,
        e?.music,
        e?.userProgres,
        e?.isStarted
      ]);

  @override
  bool isValidKey(Object? o) => o is RevisedDbRecord;
}
