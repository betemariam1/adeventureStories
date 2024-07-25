import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "primary_social_media" field.
  String? _primarySocialMedia;
  String get primarySocialMedia => _primarySocialMedia ?? '';
  bool hasPrimarySocialMedia() => _primarySocialMedia != null;

  // "auth_provider" field.
  String? _authProvider;
  String get authProvider => _authProvider ?? '';
  bool hasAuthProvider() => _authProvider != null;

  // "privacy_policy_agreed" field.
  bool? _privacyPolicyAgreed;
  bool get privacyPolicyAgreed => _privacyPolicyAgreed ?? false;
  bool hasPrivacyPolicyAgreed() => _privacyPolicyAgreed != null;

  // "privacy_policy_date" field.
  DateTime? _privacyPolicyDate;
  DateTime? get privacyPolicyDate => _privacyPolicyDate;
  bool hasPrivacyPolicyDate() => _privacyPolicyDate != null;

  // "favorited" field.
  List<DocumentReference>? _favorited;
  List<DocumentReference> get favorited => _favorited ?? const [];
  bool hasFavorited() => _favorited != null;

  // "bookStarted" field.
  List<DocumentReference>? _bookStarted;
  List<DocumentReference> get bookStarted => _bookStarted ?? const [];
  bool hasBookStarted() => _bookStarted != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _primarySocialMedia = snapshotData['primary_social_media'] as String?;
    _authProvider = snapshotData['auth_provider'] as String?;
    _privacyPolicyAgreed = snapshotData['privacy_policy_agreed'] as bool?;
    _privacyPolicyDate = snapshotData['privacy_policy_date'] as DateTime?;
    _favorited = getDataList(snapshotData['favorited']);
    _bookStarted = getDataList(snapshotData['bookStarted']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? primarySocialMedia,
  String? authProvider,
  bool? privacyPolicyAgreed,
  DateTime? privacyPolicyDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'primary_social_media': primarySocialMedia,
      'auth_provider': authProvider,
      'privacy_policy_agreed': privacyPolicyAgreed,
      'privacy_policy_date': privacyPolicyDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.primarySocialMedia == e2?.primarySocialMedia &&
        e1?.authProvider == e2?.authProvider &&
        e1?.privacyPolicyAgreed == e2?.privacyPolicyAgreed &&
        e1?.privacyPolicyDate == e2?.privacyPolicyDate &&
        listEquality.equals(e1?.favorited, e2?.favorited) &&
        listEquality.equals(e1?.bookStarted, e2?.bookStarted);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.primarySocialMedia,
        e?.authProvider,
        e?.privacyPolicyAgreed,
        e?.privacyPolicyDate,
        e?.favorited,
        e?.bookStarted
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
