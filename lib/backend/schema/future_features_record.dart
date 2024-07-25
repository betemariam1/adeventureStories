import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FutureFeaturesRecord extends FirestoreRecord {
  FutureFeaturesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "SettingsEmailNotifications" field.
  bool? _settingsEmailNotifications;
  bool get settingsEmailNotifications => _settingsEmailNotifications ?? false;
  bool hasSettingsEmailNotifications() => _settingsEmailNotifications != null;

  // "SettingsPushNotifications" field.
  bool? _settingsPushNotifications;
  bool get settingsPushNotifications => _settingsPushNotifications ?? false;
  bool hasSettingsPushNotifications() => _settingsPushNotifications != null;

  void _initializeFields() {
    _settingsEmailNotifications =
        snapshotData['SettingsEmailNotifications'] as bool?;
    _settingsPushNotifications =
        snapshotData['SettingsPushNotifications'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FutureFeatures');

  static Stream<FutureFeaturesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FutureFeaturesRecord.fromSnapshot(s));

  static Future<FutureFeaturesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FutureFeaturesRecord.fromSnapshot(s));

  static FutureFeaturesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FutureFeaturesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FutureFeaturesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FutureFeaturesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FutureFeaturesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FutureFeaturesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFutureFeaturesRecordData({
  bool? settingsEmailNotifications,
  bool? settingsPushNotifications,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'SettingsEmailNotifications': settingsEmailNotifications,
      'SettingsPushNotifications': settingsPushNotifications,
    }.withoutNulls,
  );

  return firestoreData;
}

class FutureFeaturesRecordDocumentEquality
    implements Equality<FutureFeaturesRecord> {
  const FutureFeaturesRecordDocumentEquality();

  @override
  bool equals(FutureFeaturesRecord? e1, FutureFeaturesRecord? e2) {
    return e1?.settingsEmailNotifications == e2?.settingsEmailNotifications &&
        e1?.settingsPushNotifications == e2?.settingsPushNotifications;
  }

  @override
  int hash(FutureFeaturesRecord? e) => const ListEquality()
      .hash([e?.settingsEmailNotifications, e?.settingsPushNotifications]);

  @override
  bool isValidKey(Object? o) => o is FutureFeaturesRecord;
}
