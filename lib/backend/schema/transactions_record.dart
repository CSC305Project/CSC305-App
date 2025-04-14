import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "transaction_id" field.
  String? _transactionId;
  String get transactionId => _transactionId ?? '';
  bool hasTransactionId() => _transactionId != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "purchaseName" field.
  String? _purchaseName;
  String get purchaseName => _purchaseName ?? '';
  bool hasPurchaseName() => _purchaseName != null;

  // "purchaseAmount" field.
  double? _purchaseAmount;
  double get purchaseAmount => _purchaseAmount ?? 0.0;
  bool hasPurchaseAmount() => _purchaseAmount != null;

  void _initializeFields() {
    _transactionId = snapshotData['transaction_id'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['amount']);
    _description = snapshotData['description'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _purchaseName = snapshotData['purchaseName'] as String?;
    _purchaseAmount = castToType<double>(snapshotData['purchaseAmount']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  String? transactionId,
  DocumentReference? user,
  double? amount,
  String? description,
  DateTime? createdTime,
  String? purchaseName,
  double? purchaseAmount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'transaction_id': transactionId,
      'user': user,
      'amount': amount,
      'description': description,
      'created_time': createdTime,
      'purchaseName': purchaseName,
      'purchaseAmount': purchaseAmount,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.transactionId == e2?.transactionId &&
        e1?.user == e2?.user &&
        e1?.amount == e2?.amount &&
        e1?.description == e2?.description &&
        e1?.createdTime == e2?.createdTime &&
        e1?.purchaseName == e2?.purchaseName &&
        e1?.purchaseAmount == e2?.purchaseAmount;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.transactionId,
        e?.user,
        e?.amount,
        e?.description,
        e?.createdTime,
        e?.purchaseName,
        e?.purchaseAmount
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
