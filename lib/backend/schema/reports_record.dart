import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportsRecord extends FirestoreRecord {
  ReportsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "reportContent" field.
  String? _reportContent;
  String get reportContent => _reportContent ?? '';
  bool hasReportContent() => _reportContent != null;

  // "reportedUser" field.
  DocumentReference? _reportedUser;
  DocumentReference? get reportedUser => _reportedUser;
  bool hasReportedUser() => _reportedUser != null;

  // "reportedBy" field.
  DocumentReference? _reportedBy;
  DocumentReference? get reportedBy => _reportedBy;
  bool hasReportedBy() => _reportedBy != null;

  // "reportCategory" field.
  String? _reportCategory;
  String get reportCategory => _reportCategory ?? '';
  bool hasReportCategory() => _reportCategory != null;

  void _initializeFields() {
    _reportContent = snapshotData['reportContent'] as String?;
    _reportedUser = snapshotData['reportedUser'] as DocumentReference?;
    _reportedBy = snapshotData['reportedBy'] as DocumentReference?;
    _reportCategory = snapshotData['reportCategory'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reports');

  static Stream<ReportsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportsRecord.fromSnapshot(s));

  static Future<ReportsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportsRecord.fromSnapshot(s));

  static ReportsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReportsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportsRecordData({
  String? reportContent,
  DocumentReference? reportedUser,
  DocumentReference? reportedBy,
  String? reportCategory,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'reportContent': reportContent,
      'reportedUser': reportedUser,
      'reportedBy': reportedBy,
      'reportCategory': reportCategory,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportsRecordDocumentEquality implements Equality<ReportsRecord> {
  const ReportsRecordDocumentEquality();

  @override
  bool equals(ReportsRecord? e1, ReportsRecord? e2) {
    return e1?.reportContent == e2?.reportContent &&
        e1?.reportedUser == e2?.reportedUser &&
        e1?.reportedBy == e2?.reportedBy &&
        e1?.reportCategory == e2?.reportCategory;
  }

  @override
  int hash(ReportsRecord? e) => const ListEquality().hash(
      [e?.reportContent, e?.reportedUser, e?.reportedBy, e?.reportCategory]);

  @override
  bool isValidKey(Object? o) => o is ReportsRecord;
}
