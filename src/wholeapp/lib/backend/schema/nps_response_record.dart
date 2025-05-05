import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Collects user data for Survey
class NpsResponseRecord extends FirestoreRecord {
  NpsResponseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "score" field.
  int? _score;
  int get score => _score ?? 0;
  bool hasScore() => _score != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "timeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  void _initializeFields() {
    _score = castToType<int>(snapshotData['score']);
    _feedback = snapshotData['feedback'] as String?;
    _timeStamp = snapshotData['timeStamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nps_response');

  static Stream<NpsResponseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NpsResponseRecord.fromSnapshot(s));

  static Future<NpsResponseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NpsResponseRecord.fromSnapshot(s));

  static NpsResponseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NpsResponseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NpsResponseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NpsResponseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NpsResponseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NpsResponseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNpsResponseRecordData({
  int? score,
  String? feedback,
  DateTime? timeStamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'score': score,
      'feedback': feedback,
      'timeStamp': timeStamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class NpsResponseRecordDocumentEquality implements Equality<NpsResponseRecord> {
  const NpsResponseRecordDocumentEquality();

  @override
  bool equals(NpsResponseRecord? e1, NpsResponseRecord? e2) {
    return e1?.score == e2?.score &&
        e1?.feedback == e2?.feedback &&
        e1?.timeStamp == e2?.timeStamp;
  }

  @override
  int hash(NpsResponseRecord? e) =>
      const ListEquality().hash([e?.score, e?.feedback, e?.timeStamp]);

  @override
  bool isValidKey(Object? o) => o is NpsResponseRecord;
}
