import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReadAlongStoriesRecord extends FirestoreRecord {
  ReadAlongStoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "FullStory_Audio_All" field.
  String? _fullStoryAudioAll;
  String get fullStoryAudioAll => _fullStoryAudioAll ?? '';
  bool hasFullStoryAudioAll() => _fullStoryAudioAll != null;

  // "FullStory_Chapter1_Audio" field.
  String? _fullStoryChapter1Audio;
  String get fullStoryChapter1Audio => _fullStoryChapter1Audio ?? '';
  bool hasFullStoryChapter1Audio() => _fullStoryChapter1Audio != null;

  // "FullStory_Chapter2_Audio" field.
  String? _fullStoryChapter2Audio;
  String get fullStoryChapter2Audio => _fullStoryChapter2Audio ?? '';
  bool hasFullStoryChapter2Audio() => _fullStoryChapter2Audio != null;

  // "FullStory_Chapter3_Audio" field.
  String? _fullStoryChapter3Audio;
  String get fullStoryChapter3Audio => _fullStoryChapter3Audio ?? '';
  bool hasFullStoryChapter3Audio() => _fullStoryChapter3Audio != null;

  // "FullStory_Chapter4_Audio" field.
  String? _fullStoryChapter4Audio;
  String get fullStoryChapter4Audio => _fullStoryChapter4Audio ?? '';
  bool hasFullStoryChapter4Audio() => _fullStoryChapter4Audio != null;

  // "FullStory_Chapter5_Audio" field.
  String? _fullStoryChapter5Audio;
  String get fullStoryChapter5Audio => _fullStoryChapter5Audio ?? '';
  bool hasFullStoryChapter5Audio() => _fullStoryChapter5Audio != null;

  // "FullStory_Chapter6_Audio" field.
  String? _fullStoryChapter6Audio;
  String get fullStoryChapter6Audio => _fullStoryChapter6Audio ?? '';
  bool hasFullStoryChapter6Audio() => _fullStoryChapter6Audio != null;

  // "FullStory_Chapter7_Audio" field.
  String? _fullStoryChapter7Audio;
  String get fullStoryChapter7Audio => _fullStoryChapter7Audio ?? '';
  bool hasFullStoryChapter7Audio() => _fullStoryChapter7Audio != null;

  // "FullStory_Chapter8_Audio" field.
  String? _fullStoryChapter8Audio;
  String get fullStoryChapter8Audio => _fullStoryChapter8Audio ?? '';
  bool hasFullStoryChapter8Audio() => _fullStoryChapter8Audio != null;

  // "FullStory_Chapter9_Audio" field.
  String? _fullStoryChapter9Audio;
  String get fullStoryChapter9Audio => _fullStoryChapter9Audio ?? '';
  bool hasFullStoryChapter9Audio() => _fullStoryChapter9Audio != null;

  // "FullStory_Chapter10_Audio" field.
  String? _fullStoryChapter10Audio;
  String get fullStoryChapter10Audio => _fullStoryChapter10Audio ?? '';
  bool hasFullStoryChapter10Audio() => _fullStoryChapter10Audio != null;

  // "FullStory_Chapter1_Image" field.
  String? _fullStoryChapter1Image;
  String get fullStoryChapter1Image => _fullStoryChapter1Image ?? '';
  bool hasFullStoryChapter1Image() => _fullStoryChapter1Image != null;

  // "FullStory_Chapter2_Image" field.
  String? _fullStoryChapter2Image;
  String get fullStoryChapter2Image => _fullStoryChapter2Image ?? '';
  bool hasFullStoryChapter2Image() => _fullStoryChapter2Image != null;

  // "FullStory_Chapter3_Image" field.
  String? _fullStoryChapter3Image;
  String get fullStoryChapter3Image => _fullStoryChapter3Image ?? '';
  bool hasFullStoryChapter3Image() => _fullStoryChapter3Image != null;

  // "FullStory_Chapter4_Image" field.
  String? _fullStoryChapter4Image;
  String get fullStoryChapter4Image => _fullStoryChapter4Image ?? '';
  bool hasFullStoryChapter4Image() => _fullStoryChapter4Image != null;

  // "FullStory_Chapter5_Image" field.
  String? _fullStoryChapter5Image;
  String get fullStoryChapter5Image => _fullStoryChapter5Image ?? '';
  bool hasFullStoryChapter5Image() => _fullStoryChapter5Image != null;

  // "FullStory_Chapter6_Image" field.
  String? _fullStoryChapter6Image;
  String get fullStoryChapter6Image => _fullStoryChapter6Image ?? '';
  bool hasFullStoryChapter6Image() => _fullStoryChapter6Image != null;

  // "FullStory_Chapter7_Image" field.
  String? _fullStoryChapter7Image;
  String get fullStoryChapter7Image => _fullStoryChapter7Image ?? '';
  bool hasFullStoryChapter7Image() => _fullStoryChapter7Image != null;

  // "FullStory_Chapter8_Image" field.
  String? _fullStoryChapter8Image;
  String get fullStoryChapter8Image => _fullStoryChapter8Image ?? '';
  bool hasFullStoryChapter8Image() => _fullStoryChapter8Image != null;

  // "FullStory_Chapter9_Image" field.
  String? _fullStoryChapter9Image;
  String get fullStoryChapter9Image => _fullStoryChapter9Image ?? '';
  bool hasFullStoryChapter9Image() => _fullStoryChapter9Image != null;

  // "FullStory_Chapter10_Image" field.
  String? _fullStoryChapter10Image;
  String get fullStoryChapter10Image => _fullStoryChapter10Image ?? '';
  bool hasFullStoryChapter10Image() => _fullStoryChapter10Image != null;

  // "StoryID" field.
  DocumentReference? _storyID;
  DocumentReference? get storyID => _storyID;
  bool hasStoryID() => _storyID != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "FullStory_Chapter11_Image" field.
  String? _fullStoryChapter11Image;
  String get fullStoryChapter11Image => _fullStoryChapter11Image ?? '';
  bool hasFullStoryChapter11Image() => _fullStoryChapter11Image != null;

  // "FullStory_Chapter12_Image" field.
  String? _fullStoryChapter12Image;
  String get fullStoryChapter12Image => _fullStoryChapter12Image ?? '';
  bool hasFullStoryChapter12Image() => _fullStoryChapter12Image != null;

  // "FullStory_Chapter13_Image" field.
  String? _fullStoryChapter13Image;
  String get fullStoryChapter13Image => _fullStoryChapter13Image ?? '';
  bool hasFullStoryChapter13Image() => _fullStoryChapter13Image != null;

  // "FullStory_Chapter14_Image" field.
  String? _fullStoryChapter14Image;
  String get fullStoryChapter14Image => _fullStoryChapter14Image ?? '';
  bool hasFullStoryChapter14Image() => _fullStoryChapter14Image != null;

  // "FullStory_Chapter15_Image" field.
  String? _fullStoryChapter15Image;
  String get fullStoryChapter15Image => _fullStoryChapter15Image ?? '';
  bool hasFullStoryChapter15Image() => _fullStoryChapter15Image != null;

  // "FullStory_Chapter16_Image" field.
  String? _fullStoryChapter16Image;
  String get fullStoryChapter16Image => _fullStoryChapter16Image ?? '';
  bool hasFullStoryChapter16Image() => _fullStoryChapter16Image != null;

  // "FullStory_Chapter17_Image" field.
  String? _fullStoryChapter17Image;
  String get fullStoryChapter17Image => _fullStoryChapter17Image ?? '';
  bool hasFullStoryChapter17Image() => _fullStoryChapter17Image != null;

  // "FullStory_Chapter18_Image" field.
  String? _fullStoryChapter18Image;
  String get fullStoryChapter18Image => _fullStoryChapter18Image ?? '';
  bool hasFullStoryChapter18Image() => _fullStoryChapter18Image != null;

  // "FullStory_Chapter19_Image" field.
  String? _fullStoryChapter19Image;
  String get fullStoryChapter19Image => _fullStoryChapter19Image ?? '';
  bool hasFullStoryChapter19Image() => _fullStoryChapter19Image != null;

  // "FullStory_Chapter20_Image" field.
  String? _fullStoryChapter20Image;
  String get fullStoryChapter20Image => _fullStoryChapter20Image ?? '';
  bool hasFullStoryChapter20Image() => _fullStoryChapter20Image != null;

  // "RevisedDbRef" field.
  DocumentReference? _revisedDbRef;
  DocumentReference? get revisedDbRef => _revisedDbRef;
  bool hasRevisedDbRef() => _revisedDbRef != null;

  // "StoryNameRef" field.
  DocumentReference? _storyNameRef;
  DocumentReference? get storyNameRef => _storyNameRef;
  bool hasStoryNameRef() => _storyNameRef != null;

  // "FullStoryEndPageImage" field.
  String? _fullStoryEndPageImage;
  String get fullStoryEndPageImage => _fullStoryEndPageImage ?? '';
  bool hasFullStoryEndPageImage() => _fullStoryEndPageImage != null;

  // "FullStory_Chapter11_Audio" field.
  String? _fullStoryChapter11Audio;
  String get fullStoryChapter11Audio => _fullStoryChapter11Audio ?? '';
  bool hasFullStoryChapter11Audio() => _fullStoryChapter11Audio != null;

  // "FullStory_Chapter12_Audio" field.
  String? _fullStoryChapter12Audio;
  String get fullStoryChapter12Audio => _fullStoryChapter12Audio ?? '';
  bool hasFullStoryChapter12Audio() => _fullStoryChapter12Audio != null;

  // "FullStory_Chapter13_Audio" field.
  String? _fullStoryChapter13Audio;
  String get fullStoryChapter13Audio => _fullStoryChapter13Audio ?? '';
  bool hasFullStoryChapter13Audio() => _fullStoryChapter13Audio != null;

  // "FullStory_Chapter14_Audio" field.
  String? _fullStoryChapter14Audio;
  String get fullStoryChapter14Audio => _fullStoryChapter14Audio ?? '';
  bool hasFullStoryChapter14Audio() => _fullStoryChapter14Audio != null;

  // "FullStory_Chapter15_Audio" field.
  String? _fullStoryChapter15Audio;
  String get fullStoryChapter15Audio => _fullStoryChapter15Audio ?? '';
  bool hasFullStoryChapter15Audio() => _fullStoryChapter15Audio != null;

  // "FullStory_Chapter16_Audio" field.
  String? _fullStoryChapter16Audio;
  String get fullStoryChapter16Audio => _fullStoryChapter16Audio ?? '';
  bool hasFullStoryChapter16Audio() => _fullStoryChapter16Audio != null;

  // "FullStory_Chapter17_Audio" field.
  String? _fullStoryChapter17Audio;
  String get fullStoryChapter17Audio => _fullStoryChapter17Audio ?? '';
  bool hasFullStoryChapter17Audio() => _fullStoryChapter17Audio != null;

  // "FullStory_Chapter18_Audio" field.
  String? _fullStoryChapter18Audio;
  String get fullStoryChapter18Audio => _fullStoryChapter18Audio ?? '';
  bool hasFullStoryChapter18Audio() => _fullStoryChapter18Audio != null;

  // "FullStory_Chapter19_Audio" field.
  String? _fullStoryChapter19Audio;
  String get fullStoryChapter19Audio => _fullStoryChapter19Audio ?? '';
  bool hasFullStoryChapter19Audio() => _fullStoryChapter19Audio != null;

  // "FullStory_Chapter20_Audio" field.
  String? _fullStoryChapter20Audio;
  String get fullStoryChapter20Audio => _fullStoryChapter20Audio ?? '';
  bool hasFullStoryChapter20Audio() => _fullStoryChapter20Audio != null;

  // "ImageDocumentReference" field.
  DocumentReference? _imageDocumentReference;
  DocumentReference? get imageDocumentReference => _imageDocumentReference;
  bool hasImageDocumentReference() => _imageDocumentReference != null;

  // "AudioDocumentReference" field.
  DocumentReference? _audioDocumentReference;
  DocumentReference? get audioDocumentReference => _audioDocumentReference;
  bool hasAudioDocumentReference() => _audioDocumentReference != null;

  // "FullStory_Intro_Audio" field.
  String? _fullStoryIntroAudio;
  String get fullStoryIntroAudio => _fullStoryIntroAudio ?? '';
  bool hasFullStoryIntroAudio() => _fullStoryIntroAudio != null;

  // "FullStory_Chapter21_Audio" field.
  String? _fullStoryChapter21Audio;
  String get fullStoryChapter21Audio => _fullStoryChapter21Audio ?? '';
  bool hasFullStoryChapter21Audio() => _fullStoryChapter21Audio != null;

  // "FullStory_Chapter21_Image" field.
  String? _fullStoryChapter21Image;
  String get fullStoryChapter21Image => _fullStoryChapter21Image ?? '';
  bool hasFullStoryChapter21Image() => _fullStoryChapter21Image != null;

  // "FullStoryEndPageAudio" field.
  String? _fullStoryEndPageAudio;
  String get fullStoryEndPageAudio => _fullStoryEndPageAudio ?? '';
  bool hasFullStoryEndPageAudio() => _fullStoryEndPageAudio != null;

  void _initializeFields() {
    _fullStoryAudioAll = snapshotData['FullStory_Audio_All'] as String?;
    _fullStoryChapter1Audio =
        snapshotData['FullStory_Chapter1_Audio'] as String?;
    _fullStoryChapter2Audio =
        snapshotData['FullStory_Chapter2_Audio'] as String?;
    _fullStoryChapter3Audio =
        snapshotData['FullStory_Chapter3_Audio'] as String?;
    _fullStoryChapter4Audio =
        snapshotData['FullStory_Chapter4_Audio'] as String?;
    _fullStoryChapter5Audio =
        snapshotData['FullStory_Chapter5_Audio'] as String?;
    _fullStoryChapter6Audio =
        snapshotData['FullStory_Chapter6_Audio'] as String?;
    _fullStoryChapter7Audio =
        snapshotData['FullStory_Chapter7_Audio'] as String?;
    _fullStoryChapter8Audio =
        snapshotData['FullStory_Chapter8_Audio'] as String?;
    _fullStoryChapter9Audio =
        snapshotData['FullStory_Chapter9_Audio'] as String?;
    _fullStoryChapter10Audio =
        snapshotData['FullStory_Chapter10_Audio'] as String?;
    _fullStoryChapter1Image =
        snapshotData['FullStory_Chapter1_Image'] as String?;
    _fullStoryChapter2Image =
        snapshotData['FullStory_Chapter2_Image'] as String?;
    _fullStoryChapter3Image =
        snapshotData['FullStory_Chapter3_Image'] as String?;
    _fullStoryChapter4Image =
        snapshotData['FullStory_Chapter4_Image'] as String?;
    _fullStoryChapter5Image =
        snapshotData['FullStory_Chapter5_Image'] as String?;
    _fullStoryChapter6Image =
        snapshotData['FullStory_Chapter6_Image'] as String?;
    _fullStoryChapter7Image =
        snapshotData['FullStory_Chapter7_Image'] as String?;
    _fullStoryChapter8Image =
        snapshotData['FullStory_Chapter8_Image'] as String?;
    _fullStoryChapter9Image =
        snapshotData['FullStory_Chapter9_Image'] as String?;
    _fullStoryChapter10Image =
        snapshotData['FullStory_Chapter10_Image'] as String?;
    _storyID = snapshotData['StoryID'] as DocumentReference?;
    _name = snapshotData['Name'] as String?;
    _fullStoryChapter11Image =
        snapshotData['FullStory_Chapter11_Image'] as String?;
    _fullStoryChapter12Image =
        snapshotData['FullStory_Chapter12_Image'] as String?;
    _fullStoryChapter13Image =
        snapshotData['FullStory_Chapter13_Image'] as String?;
    _fullStoryChapter14Image =
        snapshotData['FullStory_Chapter14_Image'] as String?;
    _fullStoryChapter15Image =
        snapshotData['FullStory_Chapter15_Image'] as String?;
    _fullStoryChapter16Image =
        snapshotData['FullStory_Chapter16_Image'] as String?;
    _fullStoryChapter17Image =
        snapshotData['FullStory_Chapter17_Image'] as String?;
    _fullStoryChapter18Image =
        snapshotData['FullStory_Chapter18_Image'] as String?;
    _fullStoryChapter19Image =
        snapshotData['FullStory_Chapter19_Image'] as String?;
    _fullStoryChapter20Image =
        snapshotData['FullStory_Chapter20_Image'] as String?;
    _revisedDbRef = snapshotData['RevisedDbRef'] as DocumentReference?;
    _storyNameRef = snapshotData['StoryNameRef'] as DocumentReference?;
    _fullStoryEndPageImage = snapshotData['FullStoryEndPageImage'] as String?;
    _fullStoryChapter11Audio =
        snapshotData['FullStory_Chapter11_Audio'] as String?;
    _fullStoryChapter12Audio =
        snapshotData['FullStory_Chapter12_Audio'] as String?;
    _fullStoryChapter13Audio =
        snapshotData['FullStory_Chapter13_Audio'] as String?;
    _fullStoryChapter14Audio =
        snapshotData['FullStory_Chapter14_Audio'] as String?;
    _fullStoryChapter15Audio =
        snapshotData['FullStory_Chapter15_Audio'] as String?;
    _fullStoryChapter16Audio =
        snapshotData['FullStory_Chapter16_Audio'] as String?;
    _fullStoryChapter17Audio =
        snapshotData['FullStory_Chapter17_Audio'] as String?;
    _fullStoryChapter18Audio =
        snapshotData['FullStory_Chapter18_Audio'] as String?;
    _fullStoryChapter19Audio =
        snapshotData['FullStory_Chapter19_Audio'] as String?;
    _fullStoryChapter20Audio =
        snapshotData['FullStory_Chapter20_Audio'] as String?;
    _imageDocumentReference =
        snapshotData['ImageDocumentReference'] as DocumentReference?;
    _audioDocumentReference =
        snapshotData['AudioDocumentReference'] as DocumentReference?;
    _fullStoryIntroAudio = snapshotData['FullStory_Intro_Audio'] as String?;
    _fullStoryChapter21Audio =
        snapshotData['FullStory_Chapter21_Audio'] as String?;
    _fullStoryChapter21Image =
        snapshotData['FullStory_Chapter21_Image'] as String?;
    _fullStoryEndPageAudio = snapshotData['FullStoryEndPageAudio'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ReadAlongStories');

  static Stream<ReadAlongStoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReadAlongStoriesRecord.fromSnapshot(s));

  static Future<ReadAlongStoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ReadAlongStoriesRecord.fromSnapshot(s));

  static ReadAlongStoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReadAlongStoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReadAlongStoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReadAlongStoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReadAlongStoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReadAlongStoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReadAlongStoriesRecordData({
  String? fullStoryAudioAll,
  String? fullStoryChapter1Audio,
  String? fullStoryChapter2Audio,
  String? fullStoryChapter3Audio,
  String? fullStoryChapter4Audio,
  String? fullStoryChapter5Audio,
  String? fullStoryChapter6Audio,
  String? fullStoryChapter7Audio,
  String? fullStoryChapter8Audio,
  String? fullStoryChapter9Audio,
  String? fullStoryChapter10Audio,
  String? fullStoryChapter1Image,
  String? fullStoryChapter2Image,
  String? fullStoryChapter3Image,
  String? fullStoryChapter4Image,
  String? fullStoryChapter5Image,
  String? fullStoryChapter6Image,
  String? fullStoryChapter7Image,
  String? fullStoryChapter8Image,
  String? fullStoryChapter9Image,
  String? fullStoryChapter10Image,
  DocumentReference? storyID,
  String? name,
  String? fullStoryChapter11Image,
  String? fullStoryChapter12Image,
  String? fullStoryChapter13Image,
  String? fullStoryChapter14Image,
  String? fullStoryChapter15Image,
  String? fullStoryChapter16Image,
  String? fullStoryChapter17Image,
  String? fullStoryChapter18Image,
  String? fullStoryChapter19Image,
  String? fullStoryChapter20Image,
  DocumentReference? revisedDbRef,
  DocumentReference? storyNameRef,
  String? fullStoryEndPageImage,
  String? fullStoryChapter11Audio,
  String? fullStoryChapter12Audio,
  String? fullStoryChapter13Audio,
  String? fullStoryChapter14Audio,
  String? fullStoryChapter15Audio,
  String? fullStoryChapter16Audio,
  String? fullStoryChapter17Audio,
  String? fullStoryChapter18Audio,
  String? fullStoryChapter19Audio,
  String? fullStoryChapter20Audio,
  DocumentReference? imageDocumentReference,
  DocumentReference? audioDocumentReference,
  String? fullStoryIntroAudio,
  String? fullStoryChapter21Audio,
  String? fullStoryChapter21Image,
  String? fullStoryEndPageAudio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'FullStory_Audio_All': fullStoryAudioAll,
      'FullStory_Chapter1_Audio': fullStoryChapter1Audio,
      'FullStory_Chapter2_Audio': fullStoryChapter2Audio,
      'FullStory_Chapter3_Audio': fullStoryChapter3Audio,
      'FullStory_Chapter4_Audio': fullStoryChapter4Audio,
      'FullStory_Chapter5_Audio': fullStoryChapter5Audio,
      'FullStory_Chapter6_Audio': fullStoryChapter6Audio,
      'FullStory_Chapter7_Audio': fullStoryChapter7Audio,
      'FullStory_Chapter8_Audio': fullStoryChapter8Audio,
      'FullStory_Chapter9_Audio': fullStoryChapter9Audio,
      'FullStory_Chapter10_Audio': fullStoryChapter10Audio,
      'FullStory_Chapter1_Image': fullStoryChapter1Image,
      'FullStory_Chapter2_Image': fullStoryChapter2Image,
      'FullStory_Chapter3_Image': fullStoryChapter3Image,
      'FullStory_Chapter4_Image': fullStoryChapter4Image,
      'FullStory_Chapter5_Image': fullStoryChapter5Image,
      'FullStory_Chapter6_Image': fullStoryChapter6Image,
      'FullStory_Chapter7_Image': fullStoryChapter7Image,
      'FullStory_Chapter8_Image': fullStoryChapter8Image,
      'FullStory_Chapter9_Image': fullStoryChapter9Image,
      'FullStory_Chapter10_Image': fullStoryChapter10Image,
      'StoryID': storyID,
      'Name': name,
      'FullStory_Chapter11_Image': fullStoryChapter11Image,
      'FullStory_Chapter12_Image': fullStoryChapter12Image,
      'FullStory_Chapter13_Image': fullStoryChapter13Image,
      'FullStory_Chapter14_Image': fullStoryChapter14Image,
      'FullStory_Chapter15_Image': fullStoryChapter15Image,
      'FullStory_Chapter16_Image': fullStoryChapter16Image,
      'FullStory_Chapter17_Image': fullStoryChapter17Image,
      'FullStory_Chapter18_Image': fullStoryChapter18Image,
      'FullStory_Chapter19_Image': fullStoryChapter19Image,
      'FullStory_Chapter20_Image': fullStoryChapter20Image,
      'RevisedDbRef': revisedDbRef,
      'StoryNameRef': storyNameRef,
      'FullStoryEndPageImage': fullStoryEndPageImage,
      'FullStory_Chapter11_Audio': fullStoryChapter11Audio,
      'FullStory_Chapter12_Audio': fullStoryChapter12Audio,
      'FullStory_Chapter13_Audio': fullStoryChapter13Audio,
      'FullStory_Chapter14_Audio': fullStoryChapter14Audio,
      'FullStory_Chapter15_Audio': fullStoryChapter15Audio,
      'FullStory_Chapter16_Audio': fullStoryChapter16Audio,
      'FullStory_Chapter17_Audio': fullStoryChapter17Audio,
      'FullStory_Chapter18_Audio': fullStoryChapter18Audio,
      'FullStory_Chapter19_Audio': fullStoryChapter19Audio,
      'FullStory_Chapter20_Audio': fullStoryChapter20Audio,
      'ImageDocumentReference': imageDocumentReference,
      'AudioDocumentReference': audioDocumentReference,
      'FullStory_Intro_Audio': fullStoryIntroAudio,
      'FullStory_Chapter21_Audio': fullStoryChapter21Audio,
      'FullStory_Chapter21_Image': fullStoryChapter21Image,
      'FullStoryEndPageAudio': fullStoryEndPageAudio,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReadAlongStoriesRecordDocumentEquality
    implements Equality<ReadAlongStoriesRecord> {
  const ReadAlongStoriesRecordDocumentEquality();

  @override
  bool equals(ReadAlongStoriesRecord? e1, ReadAlongStoriesRecord? e2) {
    return e1?.fullStoryAudioAll == e2?.fullStoryAudioAll &&
        e1?.fullStoryChapter1Audio == e2?.fullStoryChapter1Audio &&
        e1?.fullStoryChapter2Audio == e2?.fullStoryChapter2Audio &&
        e1?.fullStoryChapter3Audio == e2?.fullStoryChapter3Audio &&
        e1?.fullStoryChapter4Audio == e2?.fullStoryChapter4Audio &&
        e1?.fullStoryChapter5Audio == e2?.fullStoryChapter5Audio &&
        e1?.fullStoryChapter6Audio == e2?.fullStoryChapter6Audio &&
        e1?.fullStoryChapter7Audio == e2?.fullStoryChapter7Audio &&
        e1?.fullStoryChapter8Audio == e2?.fullStoryChapter8Audio &&
        e1?.fullStoryChapter9Audio == e2?.fullStoryChapter9Audio &&
        e1?.fullStoryChapter10Audio == e2?.fullStoryChapter10Audio &&
        e1?.fullStoryChapter1Image == e2?.fullStoryChapter1Image &&
        e1?.fullStoryChapter2Image == e2?.fullStoryChapter2Image &&
        e1?.fullStoryChapter3Image == e2?.fullStoryChapter3Image &&
        e1?.fullStoryChapter4Image == e2?.fullStoryChapter4Image &&
        e1?.fullStoryChapter5Image == e2?.fullStoryChapter5Image &&
        e1?.fullStoryChapter6Image == e2?.fullStoryChapter6Image &&
        e1?.fullStoryChapter7Image == e2?.fullStoryChapter7Image &&
        e1?.fullStoryChapter8Image == e2?.fullStoryChapter8Image &&
        e1?.fullStoryChapter9Image == e2?.fullStoryChapter9Image &&
        e1?.fullStoryChapter10Image == e2?.fullStoryChapter10Image &&
        e1?.storyID == e2?.storyID &&
        e1?.name == e2?.name &&
        e1?.fullStoryChapter11Image == e2?.fullStoryChapter11Image &&
        e1?.fullStoryChapter12Image == e2?.fullStoryChapter12Image &&
        e1?.fullStoryChapter13Image == e2?.fullStoryChapter13Image &&
        e1?.fullStoryChapter14Image == e2?.fullStoryChapter14Image &&
        e1?.fullStoryChapter15Image == e2?.fullStoryChapter15Image &&
        e1?.fullStoryChapter16Image == e2?.fullStoryChapter16Image &&
        e1?.fullStoryChapter17Image == e2?.fullStoryChapter17Image &&
        e1?.fullStoryChapter18Image == e2?.fullStoryChapter18Image &&
        e1?.fullStoryChapter19Image == e2?.fullStoryChapter19Image &&
        e1?.fullStoryChapter20Image == e2?.fullStoryChapter20Image &&
        e1?.revisedDbRef == e2?.revisedDbRef &&
        e1?.storyNameRef == e2?.storyNameRef &&
        e1?.fullStoryEndPageImage == e2?.fullStoryEndPageImage &&
        e1?.fullStoryChapter11Audio == e2?.fullStoryChapter11Audio &&
        e1?.fullStoryChapter12Audio == e2?.fullStoryChapter12Audio &&
        e1?.fullStoryChapter13Audio == e2?.fullStoryChapter13Audio &&
        e1?.fullStoryChapter14Audio == e2?.fullStoryChapter14Audio &&
        e1?.fullStoryChapter15Audio == e2?.fullStoryChapter15Audio &&
        e1?.fullStoryChapter16Audio == e2?.fullStoryChapter16Audio &&
        e1?.fullStoryChapter17Audio == e2?.fullStoryChapter17Audio &&
        e1?.fullStoryChapter18Audio == e2?.fullStoryChapter18Audio &&
        e1?.fullStoryChapter19Audio == e2?.fullStoryChapter19Audio &&
        e1?.fullStoryChapter20Audio == e2?.fullStoryChapter20Audio &&
        e1?.imageDocumentReference == e2?.imageDocumentReference &&
        e1?.audioDocumentReference == e2?.audioDocumentReference &&
        e1?.fullStoryIntroAudio == e2?.fullStoryIntroAudio &&
        e1?.fullStoryChapter21Audio == e2?.fullStoryChapter21Audio &&
        e1?.fullStoryChapter21Image == e2?.fullStoryChapter21Image &&
        e1?.fullStoryEndPageAudio == e2?.fullStoryEndPageAudio;
  }

  @override
  int hash(ReadAlongStoriesRecord? e) => const ListEquality().hash([
        e?.fullStoryAudioAll,
        e?.fullStoryChapter1Audio,
        e?.fullStoryChapter2Audio,
        e?.fullStoryChapter3Audio,
        e?.fullStoryChapter4Audio,
        e?.fullStoryChapter5Audio,
        e?.fullStoryChapter6Audio,
        e?.fullStoryChapter7Audio,
        e?.fullStoryChapter8Audio,
        e?.fullStoryChapter9Audio,
        e?.fullStoryChapter10Audio,
        e?.fullStoryChapter1Image,
        e?.fullStoryChapter2Image,
        e?.fullStoryChapter3Image,
        e?.fullStoryChapter4Image,
        e?.fullStoryChapter5Image,
        e?.fullStoryChapter6Image,
        e?.fullStoryChapter7Image,
        e?.fullStoryChapter8Image,
        e?.fullStoryChapter9Image,
        e?.fullStoryChapter10Image,
        e?.storyID,
        e?.name,
        e?.fullStoryChapter11Image,
        e?.fullStoryChapter12Image,
        e?.fullStoryChapter13Image,
        e?.fullStoryChapter14Image,
        e?.fullStoryChapter15Image,
        e?.fullStoryChapter16Image,
        e?.fullStoryChapter17Image,
        e?.fullStoryChapter18Image,
        e?.fullStoryChapter19Image,
        e?.fullStoryChapter20Image,
        e?.revisedDbRef,
        e?.storyNameRef,
        e?.fullStoryEndPageImage,
        e?.fullStoryChapter11Audio,
        e?.fullStoryChapter12Audio,
        e?.fullStoryChapter13Audio,
        e?.fullStoryChapter14Audio,
        e?.fullStoryChapter15Audio,
        e?.fullStoryChapter16Audio,
        e?.fullStoryChapter17Audio,
        e?.fullStoryChapter18Audio,
        e?.fullStoryChapter19Audio,
        e?.fullStoryChapter20Audio,
        e?.imageDocumentReference,
        e?.audioDocumentReference,
        e?.fullStoryIntroAudio,
        e?.fullStoryChapter21Audio,
        e?.fullStoryChapter21Image,
        e?.fullStoryEndPageAudio
      ]);

  @override
  bool isValidKey(Object? o) => o is ReadAlongStoriesRecord;
}
