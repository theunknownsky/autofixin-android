import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

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

  // "transaction_service_availed" field.
  String? _transactionServiceAvailed;
  String get transactionServiceAvailed => _transactionServiceAvailed ?? '';
  bool hasTransactionServiceAvailed() => _transactionServiceAvailed != null;

  // "transaction_service_fee" field.
  int? _transactionServiceFee;
  int get transactionServiceFee => _transactionServiceFee ?? 0;
  bool hasTransactionServiceFee() => _transactionServiceFee != null;

  // "transaction_timestamp" field.
  DateTime? _transactionTimestamp;
  DateTime? get transactionTimestamp => _transactionTimestamp;
  bool hasTransactionTimestamp() => _transactionTimestamp != null;

  // "transaction_shop" field.
  DocumentReference? _transactionShop;
  DocumentReference? get transactionShop => _transactionShop;
  bool hasTransactionShop() => _transactionShop != null;

  // "transaction_rider" field.
  DocumentReference? _transactionRider;
  DocumentReference? get transactionRider => _transactionRider;
  bool hasTransactionRider() => _transactionRider != null;

  // "transaction_mode" field.
  String? _transactionMode;
  String get transactionMode => _transactionMode ?? '';
  bool hasTransactionMode() => _transactionMode != null;

  // "transaction_services" field.
  List<String>? _transactionServices;
  List<String> get transactionServices => _transactionServices ?? const [];
  bool hasTransactionServices() => _transactionServices != null;

  // "transaction_services_fees" field.
  List<int>? _transactionServicesFees;
  List<int> get transactionServicesFees => _transactionServicesFees ?? const [];
  bool hasTransactionServicesFees() => _transactionServicesFees != null;

  void _initializeFields() {
    _transactionId = snapshotData['transaction_id'] as String?;
    _transactionServiceAvailed =
        snapshotData['transaction_service_availed'] as String?;
    _transactionServiceFee =
        castToType<int>(snapshotData['transaction_service_fee']);
    _transactionTimestamp = snapshotData['transaction_timestamp'] as DateTime?;
    _transactionShop = snapshotData['transaction_shop'] as DocumentReference?;
    _transactionRider = snapshotData['transaction_rider'] as DocumentReference?;
    _transactionMode = snapshotData['transaction_mode'] as String?;
    _transactionServices = getDataList(snapshotData['transaction_services']);
    _transactionServicesFees =
        getDataList(snapshotData['transaction_services_fees']);
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
  String? transactionServiceAvailed,
  int? transactionServiceFee,
  DateTime? transactionTimestamp,
  DocumentReference? transactionShop,
  DocumentReference? transactionRider,
  String? transactionMode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'transaction_id': transactionId,
      'transaction_service_availed': transactionServiceAvailed,
      'transaction_service_fee': transactionServiceFee,
      'transaction_timestamp': transactionTimestamp,
      'transaction_shop': transactionShop,
      'transaction_rider': transactionRider,
      'transaction_mode': transactionMode,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.transactionId == e2?.transactionId &&
        e1?.transactionServiceAvailed == e2?.transactionServiceAvailed &&
        e1?.transactionServiceFee == e2?.transactionServiceFee &&
        e1?.transactionTimestamp == e2?.transactionTimestamp &&
        e1?.transactionShop == e2?.transactionShop &&
        e1?.transactionRider == e2?.transactionRider &&
        e1?.transactionMode == e2?.transactionMode &&
        listEquality.equals(e1?.transactionServices, e2?.transactionServices) &&
        listEquality.equals(
            e1?.transactionServicesFees, e2?.transactionServicesFees);
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality().hash([
        e?.transactionId,
        e?.transactionServiceAvailed,
        e?.transactionServiceFee,
        e?.transactionTimestamp,
        e?.transactionShop,
        e?.transactionRider,
        e?.transactionMode,
        e?.transactionServices,
        e?.transactionServicesFees
      ]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
