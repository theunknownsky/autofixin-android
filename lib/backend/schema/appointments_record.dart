import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppointmentsRecord extends FirestoreRecord {
  AppointmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "appointment_status" field.
  int? _appointmentStatus;
  int get appointmentStatus => _appointmentStatus ?? 0;
  bool hasAppointmentStatus() => _appointmentStatus != null;

  // "appointment_vehicle" field.
  DocumentReference? _appointmentVehicle;
  DocumentReference? get appointmentVehicle => _appointmentVehicle;
  bool hasAppointmentVehicle() => _appointmentVehicle != null;

  // "appointment_rider" field.
  DocumentReference? _appointmentRider;
  DocumentReference? get appointmentRider => _appointmentRider;
  bool hasAppointmentRider() => _appointmentRider != null;

  // "appointment_shop" field.
  DocumentReference? _appointmentShop;
  DocumentReference? get appointmentShop => _appointmentShop;
  bool hasAppointmentShop() => _appointmentShop != null;

  // "appointment_location" field.
  LatLng? _appointmentLocation;
  LatLng? get appointmentLocation => _appointmentLocation;
  bool hasAppointmentLocation() => _appointmentLocation != null;

  // "appointment_message" field.
  String? _appointmentMessage;
  String get appointmentMessage => _appointmentMessage ?? '';
  bool hasAppointmentMessage() => _appointmentMessage != null;

  // "appointment_service_fee" field.
  int? _appointmentServiceFee;
  int get appointmentServiceFee => _appointmentServiceFee ?? 0;
  bool hasAppointmentServiceFee() => _appointmentServiceFee != null;

  // "appointment_service_availed" field.
  String? _appointmentServiceAvailed;
  String get appointmentServiceAvailed => _appointmentServiceAvailed ?? '';
  bool hasAppointmentServiceAvailed() => _appointmentServiceAvailed != null;

  // "appointment_transaction_mode" field.
  String? _appointmentTransactionMode;
  String get appointmentTransactionMode => _appointmentTransactionMode ?? '';
  bool hasAppointmentTransactionMode() => _appointmentTransactionMode != null;

  // "appointment_services" field.
  List<String>? _appointmentServices;
  List<String> get appointmentServices => _appointmentServices ?? const [];
  bool hasAppointmentServices() => _appointmentServices != null;

  // "appointment_services_fees_list" field.
  List<int>? _appointmentServicesFeesList;
  List<int> get appointmentServicesFeesList =>
      _appointmentServicesFeesList ?? const [];
  bool hasAppointmentServicesFeesList() => _appointmentServicesFeesList != null;

  // "appointment_mechanic" field.
  String? _appointmentMechanic;
  String get appointmentMechanic => _appointmentMechanic ?? '';
  bool hasAppointmentMechanic() => _appointmentMechanic != null;

  void _initializeFields() {
    _appointmentStatus = castToType<int>(snapshotData['appointment_status']);
    _appointmentVehicle =
        snapshotData['appointment_vehicle'] as DocumentReference?;
    _appointmentRider = snapshotData['appointment_rider'] as DocumentReference?;
    _appointmentShop = snapshotData['appointment_shop'] as DocumentReference?;
    _appointmentLocation = snapshotData['appointment_location'] as LatLng?;
    _appointmentMessage = snapshotData['appointment_message'] as String?;
    _appointmentServiceFee =
        castToType<int>(snapshotData['appointment_service_fee']);
    _appointmentServiceAvailed =
        snapshotData['appointment_service_availed'] as String?;
    _appointmentTransactionMode =
        snapshotData['appointment_transaction_mode'] as String?;
    _appointmentServices = getDataList(snapshotData['appointment_services']);
    _appointmentServicesFeesList =
        getDataList(snapshotData['appointment_services_fees_list']);
    _appointmentMechanic = snapshotData['appointment_mechanic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointments');

  static Stream<AppointmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppointmentsRecord.fromSnapshot(s));

  static Future<AppointmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppointmentsRecord.fromSnapshot(s));

  static AppointmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppointmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppointmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppointmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppointmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppointmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppointmentsRecordData({
  int? appointmentStatus,
  DocumentReference? appointmentVehicle,
  DocumentReference? appointmentRider,
  DocumentReference? appointmentShop,
  LatLng? appointmentLocation,
  String? appointmentMessage,
  int? appointmentServiceFee,
  String? appointmentServiceAvailed,
  String? appointmentTransactionMode,
  String? appointmentMechanic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'appointment_status': appointmentStatus,
      'appointment_vehicle': appointmentVehicle,
      'appointment_rider': appointmentRider,
      'appointment_shop': appointmentShop,
      'appointment_location': appointmentLocation,
      'appointment_message': appointmentMessage,
      'appointment_service_fee': appointmentServiceFee,
      'appointment_service_availed': appointmentServiceAvailed,
      'appointment_transaction_mode': appointmentTransactionMode,
      'appointment_mechanic': appointmentMechanic,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppointmentsRecordDocumentEquality
    implements Equality<AppointmentsRecord> {
  const AppointmentsRecordDocumentEquality();

  @override
  bool equals(AppointmentsRecord? e1, AppointmentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.appointmentStatus == e2?.appointmentStatus &&
        e1?.appointmentVehicle == e2?.appointmentVehicle &&
        e1?.appointmentRider == e2?.appointmentRider &&
        e1?.appointmentShop == e2?.appointmentShop &&
        e1?.appointmentLocation == e2?.appointmentLocation &&
        e1?.appointmentMessage == e2?.appointmentMessage &&
        e1?.appointmentServiceFee == e2?.appointmentServiceFee &&
        e1?.appointmentServiceAvailed == e2?.appointmentServiceAvailed &&
        e1?.appointmentTransactionMode == e2?.appointmentTransactionMode &&
        listEquality.equals(e1?.appointmentServices, e2?.appointmentServices) &&
        listEquality.equals(
            e1?.appointmentServicesFeesList, e2?.appointmentServicesFeesList) &&
        e1?.appointmentMechanic == e2?.appointmentMechanic;
  }

  @override
  int hash(AppointmentsRecord? e) => const ListEquality().hash([
        e?.appointmentStatus,
        e?.appointmentVehicle,
        e?.appointmentRider,
        e?.appointmentShop,
        e?.appointmentLocation,
        e?.appointmentMessage,
        e?.appointmentServiceFee,
        e?.appointmentServiceAvailed,
        e?.appointmentTransactionMode,
        e?.appointmentServices,
        e?.appointmentServicesFeesList,
        e?.appointmentMechanic
      ]);

  @override
  bool isValidKey(Object? o) => o is AppointmentsRecord;
}
