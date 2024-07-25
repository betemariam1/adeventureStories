import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingRecord extends FirestoreRecord {
  OnboardingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "UpgradeProOffered" field.
  bool? _upgradeProOffered;
  bool get upgradeProOffered => _upgradeProOffered ?? false;
  bool hasUpgradeProOffered() => _upgradeProOffered != null;

  // "StartTrialClicked" field.
  bool? _startTrialClicked;
  bool get startTrialClicked => _startTrialClicked ?? false;
  bool hasStartTrialClicked() => _startTrialClicked != null;

  // "TrialNotification" field.
  bool? _trialNotification;
  bool get trialNotification => _trialNotification ?? false;
  bool hasTrialNotification() => _trialNotification != null;

  // "UserId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _upgradeProOffered = snapshotData['UpgradeProOffered'] as bool?;
    _startTrialClicked = snapshotData['StartTrialClicked'] as bool?;
    _trialNotification = snapshotData['TrialNotification'] as bool?;
    _userId = snapshotData['UserId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Onboarding');

  static Stream<OnboardingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OnboardingRecord.fromSnapshot(s));

  static Future<OnboardingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OnboardingRecord.fromSnapshot(s));

  static OnboardingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OnboardingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OnboardingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OnboardingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OnboardingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OnboardingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOnboardingRecordData({
  bool? upgradeProOffered,
  bool? startTrialClicked,
  bool? trialNotification,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UpgradeProOffered': upgradeProOffered,
      'StartTrialClicked': startTrialClicked,
      'TrialNotification': trialNotification,
      'UserId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OnboardingRecordDocumentEquality implements Equality<OnboardingRecord> {
  const OnboardingRecordDocumentEquality();

  @override
  bool equals(OnboardingRecord? e1, OnboardingRecord? e2) {
    return e1?.upgradeProOffered == e2?.upgradeProOffered &&
        e1?.startTrialClicked == e2?.startTrialClicked &&
        e1?.trialNotification == e2?.trialNotification &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(OnboardingRecord? e) => const ListEquality().hash([
        e?.upgradeProOffered,
        e?.startTrialClicked,
        e?.trialNotification,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is OnboardingRecord;
}
