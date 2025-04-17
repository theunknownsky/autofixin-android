import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehiclesRecord extends FirestoreRecord {
  VehiclesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "vehicle_manufacturer" field.
  String? _vehicleManufacturer;
  String get vehicleManufacturer => _vehicleManufacturer ?? '';
  bool hasVehicleManufacturer() => _vehicleManufacturer != null;

  // "vehicle_year" field.
  int? _vehicleYear;
  int get vehicleYear => _vehicleYear ?? 0;
  bool hasVehicleYear() => _vehicleYear != null;

  // "vehicle_model" field.
  String? _vehicleModel;
  String get vehicleModel => _vehicleModel ?? '';
  bool hasVehicleModel() => _vehicleModel != null;

  // "vehicle_color" field.
  String? _vehicleColor;
  String get vehicleColor => _vehicleColor ?? '';
  bool hasVehicleColor() => _vehicleColor != null;

  // "vehicle_plate_number" field.
  String? _vehiclePlateNumber;
  String get vehiclePlateNumber => _vehiclePlateNumber ?? '';
  bool hasVehiclePlateNumber() => _vehiclePlateNumber != null;

  // "vehicle_type" field.
  String? _vehicleType;
  String get vehicleType => _vehicleType ?? '';
  bool hasVehicleType() => _vehicleType != null;

  // "vehicle_transmission" field.
  String? _vehicleTransmission;
  String get vehicleTransmission => _vehicleTransmission ?? '';
  bool hasVehicleTransmission() => _vehicleTransmission != null;

  // "vehicle_id" field.
  DocumentReference? _vehicleId;
  DocumentReference? get vehicleId => _vehicleId;
  bool hasVehicleId() => _vehicleId != null;

  // "vehicle_id_str" field.
  String? _vehicleIdStr;
  String get vehicleIdStr => _vehicleIdStr ?? '';
  bool hasVehicleIdStr() => _vehicleIdStr != null;

  // "vehicle_display_name" field.
  String? _vehicleDisplayName;
  String get vehicleDisplayName => _vehicleDisplayName ?? '';
  bool hasVehicleDisplayName() => _vehicleDisplayName != null;

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

  void _initializeFields() {
    _vehicleManufacturer = snapshotData['vehicle_manufacturer'] as String?;
    _vehicleYear = castToType<int>(snapshotData['vehicle_year']);
    _vehicleModel = snapshotData['vehicle_model'] as String?;
    _vehicleColor = snapshotData['vehicle_color'] as String?;
    _vehiclePlateNumber = snapshotData['vehicle_plate_number'] as String?;
    _vehicleType = snapshotData['vehicle_type'] as String?;
    _vehicleTransmission = snapshotData['vehicle_transmission'] as String?;
    _vehicleId = snapshotData['vehicle_id'] as DocumentReference?;
    _vehicleIdStr = snapshotData['vehicle_id_str'] as String?;
    _vehicleDisplayName = snapshotData['vehicle_display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicles');

  static Stream<VehiclesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehiclesRecord.fromSnapshot(s));

  static Future<VehiclesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VehiclesRecord.fromSnapshot(s));

  static VehiclesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehiclesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehiclesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehiclesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehiclesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehiclesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehiclesRecordData({
  String? vehicleManufacturer,
  int? vehicleYear,
  String? vehicleModel,
  String? vehicleColor,
  String? vehiclePlateNumber,
  String? vehicleType,
  String? vehicleTransmission,
  DocumentReference? vehicleId,
  String? vehicleIdStr,
  String? vehicleDisplayName,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vehicle_manufacturer': vehicleManufacturer,
      'vehicle_year': vehicleYear,
      'vehicle_model': vehicleModel,
      'vehicle_color': vehicleColor,
      'vehicle_plate_number': vehiclePlateNumber,
      'vehicle_type': vehicleType,
      'vehicle_transmission': vehicleTransmission,
      'vehicle_id': vehicleId,
      'vehicle_id_str': vehicleIdStr,
      'vehicle_display_name': vehicleDisplayName,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehiclesRecordDocumentEquality implements Equality<VehiclesRecord> {
  const VehiclesRecordDocumentEquality();

  @override
  bool equals(VehiclesRecord? e1, VehiclesRecord? e2) {
    return e1?.vehicleManufacturer == e2?.vehicleManufacturer &&
        e1?.vehicleYear == e2?.vehicleYear &&
        e1?.vehicleModel == e2?.vehicleModel &&
        e1?.vehicleColor == e2?.vehicleColor &&
        e1?.vehiclePlateNumber == e2?.vehiclePlateNumber &&
        e1?.vehicleType == e2?.vehicleType &&
        e1?.vehicleTransmission == e2?.vehicleTransmission &&
        e1?.vehicleId == e2?.vehicleId &&
        e1?.vehicleIdStr == e2?.vehicleIdStr &&
        e1?.vehicleDisplayName == e2?.vehicleDisplayName &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(VehiclesRecord? e) => const ListEquality().hash([
        e?.vehicleManufacturer,
        e?.vehicleYear,
        e?.vehicleModel,
        e?.vehicleColor,
        e?.vehiclePlateNumber,
        e?.vehicleType,
        e?.vehicleTransmission,
        e?.vehicleId,
        e?.vehicleIdStr,
        e?.vehicleDisplayName,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is VehiclesRecord;
}
