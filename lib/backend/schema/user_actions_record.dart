import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserActionsRecord extends FirestoreRecord {
  UserActionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ActionId" field.
  String? _actionId;
  String get actionId => _actionId ?? '';
  bool hasActionId() => _actionId != null;

  // "ActionType" field.
  String? _actionType;
  String get actionType => _actionType ?? '';
  bool hasActionType() => _actionType != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "UserId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "TicketType" field.
  String? _ticketType;
  String get ticketType => _ticketType ?? '';
  bool hasTicketType() => _ticketType != null;

  // "TicketDescription" field.
  String? _ticketDescription;
  String get ticketDescription => _ticketDescription ?? '';
  bool hasTicketDescription() => _ticketDescription != null;

  // "TicketUsersEmail" field.
  DocumentReference? _ticketUsersEmail;
  DocumentReference? get ticketUsersEmail => _ticketUsersEmail;
  bool hasTicketUsersEmail() => _ticketUsersEmail != null;

  // "TicketUsersEmailString" field.
  String? _ticketUsersEmailString;
  String get ticketUsersEmailString => _ticketUsersEmailString ?? '';
  bool hasTicketUsersEmailString() => _ticketUsersEmailString != null;

  void _initializeFields() {
    _actionId = snapshotData['ActionId'] as String?;
    _actionType = snapshotData['ActionType'] as String?;
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
    _userId = snapshotData['UserId'] as DocumentReference?;
    _ticketType = snapshotData['TicketType'] as String?;
    _ticketDescription = snapshotData['TicketDescription'] as String?;
    _ticketUsersEmail = snapshotData['TicketUsersEmail'] as DocumentReference?;
    _ticketUsersEmailString = snapshotData['TicketUsersEmailString'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserActions');

  static Stream<UserActionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserActionsRecord.fromSnapshot(s));

  static Future<UserActionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserActionsRecord.fromSnapshot(s));

  static UserActionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserActionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserActionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserActionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserActionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserActionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserActionsRecordData({
  String? actionId,
  String? actionType,
  DateTime? timeStamp,
  DocumentReference? userId,
  String? ticketType,
  String? ticketDescription,
  DocumentReference? ticketUsersEmail,
  String? ticketUsersEmailString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ActionId': actionId,
      'ActionType': actionType,
      'TimeStamp': timeStamp,
      'UserId': userId,
      'TicketType': ticketType,
      'TicketDescription': ticketDescription,
      'TicketUsersEmail': ticketUsersEmail,
      'TicketUsersEmailString': ticketUsersEmailString,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserActionsRecordDocumentEquality implements Equality<UserActionsRecord> {
  const UserActionsRecordDocumentEquality();

  @override
  bool equals(UserActionsRecord? e1, UserActionsRecord? e2) {
    return e1?.actionId == e2?.actionId &&
        e1?.actionType == e2?.actionType &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.userId == e2?.userId &&
        e1?.ticketType == e2?.ticketType &&
        e1?.ticketDescription == e2?.ticketDescription &&
        e1?.ticketUsersEmail == e2?.ticketUsersEmail &&
        e1?.ticketUsersEmailString == e2?.ticketUsersEmailString;
  }

  @override
  int hash(UserActionsRecord? e) => const ListEquality().hash([
        e?.actionId,
        e?.actionType,
        e?.timeStamp,
        e?.userId,
        e?.ticketType,
        e?.ticketDescription,
        e?.ticketUsersEmail,
        e?.ticketUsersEmailString
      ]);

  @override
  bool isValidKey(Object? o) => o is UserActionsRecord;
}
