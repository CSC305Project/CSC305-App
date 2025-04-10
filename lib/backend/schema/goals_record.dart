import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GoalsRecord extends FirestoreRecord {
  GoalsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "monthlyBudget" field.
  double? _monthlyBudget;
  double get monthlyBudget => _monthlyBudget ?? 0.0;
  bool hasMonthlyBudget() => _monthlyBudget != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
    _monthlyBudget = castToType<double>(snapshotData['monthlyBudget']);
    _user = snapshotData['user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('goals');

  static Stream<GoalsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GoalsRecord.fromSnapshot(s));

  static Future<GoalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GoalsRecord.fromSnapshot(s));

  static GoalsRecord fromSnapshot(DocumentSnapshot snapshot) => GoalsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GoalsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GoalsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GoalsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GoalsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGoalsRecordData({
  String? title,
  String? details,
  double? monthlyBudget,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'details': details,
      'monthlyBudget': monthlyBudget,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class GoalsRecordDocumentEquality implements Equality<GoalsRecord> {
  const GoalsRecordDocumentEquality();

  @override
  bool equals(GoalsRecord? e1, GoalsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.details == e2?.details &&
        e1?.monthlyBudget == e2?.monthlyBudget &&
        e1?.user == e2?.user;
  }

  @override
  int hash(GoalsRecord? e) => const ListEquality()
      .hash([e?.title, e?.details, e?.monthlyBudget, e?.user]);

  @override
  bool isValidKey(Object? o) => o is GoalsRecord;
}
