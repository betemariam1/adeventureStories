// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PagesStruct extends FFFirebaseStruct {
  PagesStruct({
    String? image,
    String? narration,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _narration = narration,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "narration" field.
  String? _narration;
  String get narration => _narration ?? '';
  set narration(String? val) => _narration = val;

  bool hasNarration() => _narration != null;

  static PagesStruct fromMap(Map<String, dynamic> data) => PagesStruct(
        image: data['image'] as String?,
        narration: data['narration'] as String?,
      );

  static PagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? PagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'narration': _narration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'narration': serializeParam(
          _narration,
          ParamType.String,
        ),
      }.withoutNulls;

  static PagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      PagesStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        narration: deserializeParam(
          data['narration'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PagesStruct &&
        image == other.image &&
        narration == other.narration;
  }

  @override
  int get hashCode => const ListEquality().hash([image, narration]);
}

PagesStruct createPagesStruct({
  String? image,
  String? narration,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PagesStruct(
      image: image,
      narration: narration,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PagesStruct? updatePagesStruct(
  PagesStruct? pages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPagesStructData(
  Map<String, dynamic> firestoreData,
  PagesStruct? pages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pages == null) {
    return;
  }
  if (pages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pagesData = getPagesFirestoreData(pages, forFieldValue);
  final nestedData = pagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPagesFirestoreData(
  PagesStruct? pages, [
  bool forFieldValue = false,
]) {
  if (pages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pages.toMap());

  // Add any Firestore field values
  pages.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPagesListFirestoreData(
  List<PagesStruct>? pagess,
) =>
    pagess?.map((e) => getPagesFirestoreData(e, true)).toList() ?? [];
