import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileRecord extends FirestoreRecord {
  UserProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Notifications" field.
  bool? _notifications;
  bool get notifications => _notifications ?? false;
  bool hasNotifications() => _notifications != null;

  // "AutoplayNextStory" field.
  bool? _autoplayNextStory;
  bool get autoplayNextStory => _autoplayNextStory ?? false;
  bool hasAutoplayNextStory() => _autoplayNextStory != null;

  // "Language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "HideAdventureStories" field.
  bool? _hideAdventureStories;
  bool get hideAdventureStories => _hideAdventureStories ?? false;
  bool hasHideAdventureStories() => _hideAdventureStories != null;

  // "IsProUser" field.
  bool? _isProUser;
  bool get isProUser => _isProUser ?? false;
  bool hasIsProUser() => _isProUser != null;

  // "SubscriptionStatus" field.
  String? _subscriptionStatus;
  String get subscriptionStatus => _subscriptionStatus ?? '';
  bool hasSubscriptionStatus() => _subscriptionStatus != null;

  // "UserId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "Favorites" field.
  List<DocumentReference>? _favorites;
  List<DocumentReference> get favorites => _favorites ?? const [];
  bool hasFavorites() => _favorites != null;

  // "StartedStories" field.
  List<DocumentReference>? _startedStories;
  List<DocumentReference> get startedStories => _startedStories ?? const [];
  bool hasStartedStories() => _startedStories != null;

  // "FinishedStories" field.
  List<DocumentReference>? _finishedStories;
  List<DocumentReference> get finishedStories => _finishedStories ?? const [];
  bool hasFinishedStories() => _finishedStories != null;

  void _initializeFields() {
    _notifications = snapshotData['Notifications'] as bool?;
    _autoplayNextStory = snapshotData['AutoplayNextStory'] as bool?;
    _language = snapshotData['Language'] as String?;
    _hideAdventureStories = snapshotData['HideAdventureStories'] as bool?;
    _isProUser = snapshotData['IsProUser'] as bool?;
    _subscriptionStatus = snapshotData['SubscriptionStatus'] as String?;
    _userId = snapshotData['UserId'] as DocumentReference?;
    _favorites = getDataList(snapshotData['Favorites']);
    _startedStories = getDataList(snapshotData['StartedStories']);
    _finishedStories = getDataList(snapshotData['FinishedStories']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserProfile');

  static Stream<UserProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserProfileRecord.fromSnapshot(s));

  static Future<UserProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserProfileRecord.fromSnapshot(s));

  static UserProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserProfileRecordData({
  bool? notifications,
  bool? autoplayNextStory,
  String? language,
  bool? hideAdventureStories,
  bool? isProUser,
  String? subscriptionStatus,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Notifications': notifications,
      'AutoplayNextStory': autoplayNextStory,
      'Language': language,
      'HideAdventureStories': hideAdventureStories,
      'IsProUser': isProUser,
      'SubscriptionStatus': subscriptionStatus,
      'UserId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserProfileRecordDocumentEquality implements Equality<UserProfileRecord> {
  const UserProfileRecordDocumentEquality();

  @override
  bool equals(UserProfileRecord? e1, UserProfileRecord? e2) {
    const listEquality = ListEquality();
    return e1?.notifications == e2?.notifications &&
        e1?.autoplayNextStory == e2?.autoplayNextStory &&
        e1?.language == e2?.language &&
        e1?.hideAdventureStories == e2?.hideAdventureStories &&
        e1?.isProUser == e2?.isProUser &&
        e1?.subscriptionStatus == e2?.subscriptionStatus &&
        e1?.userId == e2?.userId &&
        listEquality.equals(e1?.favorites, e2?.favorites) &&
        listEquality.equals(e1?.startedStories, e2?.startedStories) &&
        listEquality.equals(e1?.finishedStories, e2?.finishedStories);
  }

  @override
  int hash(UserProfileRecord? e) => const ListEquality().hash([
        e?.notifications,
        e?.autoplayNextStory,
        e?.language,
        e?.hideAdventureStories,
        e?.isProUser,
        e?.subscriptionStatus,
        e?.userId,
        e?.favorites,
        e?.startedStories,
        e?.finishedStories
      ]);

  @override
  bool isValidKey(Object? o) => o is UserProfileRecord;
}
