import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

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

  // "user_type" field.
  int? _userType;
  int get userType => _userType ?? 0;
  bool hasUserType() => _userType != null;

  // "rider_first_name" field.
  String? _riderFirstName;
  String get riderFirstName => _riderFirstName ?? '';
  bool hasRiderFirstName() => _riderFirstName != null;

  // "rider_last_name" field.
  String? _riderLastName;
  String get riderLastName => _riderLastName ?? '';
  bool hasRiderLastName() => _riderLastName != null;

  // "user_verified" field.
  bool? _userVerified;
  bool get userVerified => _userVerified ?? false;
  bool hasUserVerified() => _userVerified != null;

  // "rider_phone_number" field.
  String? _riderPhoneNumber;
  String get riderPhoneNumber => _riderPhoneNumber ?? '';
  bool hasRiderPhoneNumber() => _riderPhoneNumber != null;

  // "rider_driver_license_id" field.
  String? _riderDriverLicenseId;
  String get riderDriverLicenseId => _riderDriverLicenseId ?? '';
  bool hasRiderDriverLicenseId() => _riderDriverLicenseId != null;

  // "rider_license_id_pic" field.
  String? _riderLicenseIdPic;
  String get riderLicenseIdPic => _riderLicenseIdPic ?? '';
  bool hasRiderLicenseIdPic() => _riderLicenseIdPic != null;

  // "shop_name" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  bool hasShopName() => _shopName != null;

  // "shop_opening_hour" field.
  DateTime? _shopOpeningHour;
  DateTime? get shopOpeningHour => _shopOpeningHour;
  bool hasShopOpeningHour() => _shopOpeningHour != null;

  // "shop_closing_hour" field.
  DateTime? _shopClosingHour;
  DateTime? get shopClosingHour => _shopClosingHour;
  bool hasShopClosingHour() => _shopClosingHour != null;

  // "shop_business_permit_number" field.
  String? _shopBusinessPermitNumber;
  String get shopBusinessPermitNumber => _shopBusinessPermitNumber ?? '';
  bool hasShopBusinessPermitNumber() => _shopBusinessPermitNumber != null;

  // "shop_location" field.
  LatLng? _shopLocation;
  LatLng? get shopLocation => _shopLocation;
  bool hasShopLocation() => _shopLocation != null;

  // "shop_business_permit_pic" field.
  String? _shopBusinessPermitPic;
  String get shopBusinessPermitPic => _shopBusinessPermitPic ?? '';
  bool hasShopBusinessPermitPic() => _shopBusinessPermitPic != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "shop_towing_availability" field.
  bool? _shopTowingAvailability;
  bool get shopTowingAvailability => _shopTowingAvailability ?? false;
  bool hasShopTowingAvailability() => _shopTowingAvailability != null;

  // "shop_services" field.
  List<String>? _shopServices;
  List<String> get shopServices => _shopServices ?? const [];
  bool hasShopServices() => _shopServices != null;

  // "rider_vehicles" field.
  List<DocumentReference>? _riderVehicles;
  List<DocumentReference> get riderVehicles => _riderVehicles ?? const [];
  bool hasRiderVehicles() => _riderVehicles != null;

  // "user_transactions" field.
  List<DocumentReference>? _userTransactions;
  List<DocumentReference> get userTransactions => _userTransactions ?? const [];
  bool hasUserTransactions() => _userTransactions != null;

  // "user_appointments" field.
  List<DocumentReference>? _userAppointments;
  List<DocumentReference> get userAppointments => _userAppointments ?? const [];
  bool hasUserAppointments() => _userAppointments != null;

  // "shop_reviews" field.
  List<DocumentReference>? _shopReviews;
  List<DocumentReference> get shopReviews => _shopReviews ?? const [];
  bool hasShopReviews() => _shopReviews != null;

  // "shop_rating" field.
  double? _shopRating;
  double get shopRating => _shopRating ?? 0.0;
  bool hasShopRating() => _shopRating != null;

  // "shop_stars" field.
  int? _shopStars;
  int get shopStars => _shopStars ?? 0;
  bool hasShopStars() => _shopStars != null;

  // "shop_services_prices" field.
  List<int>? _shopServicesPrices;
  List<int> get shopServicesPrices => _shopServicesPrices ?? const [];
  bool hasShopServicesPrices() => _shopServicesPrices != null;

  // "shop_contact_number" field.
  String? _shopContactNumber;
  String get shopContactNumber => _shopContactNumber ?? '';
  bool hasShopContactNumber() => _shopContactNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userType = castToType<int>(snapshotData['user_type']);
    _riderFirstName = snapshotData['rider_first_name'] as String?;
    _riderLastName = snapshotData['rider_last_name'] as String?;
    _userVerified = snapshotData['user_verified'] as bool?;
    _riderPhoneNumber = snapshotData['rider_phone_number'] as String?;
    _riderDriverLicenseId = snapshotData['rider_driver_license_id'] as String?;
    _riderLicenseIdPic = snapshotData['rider_license_id_pic'] as String?;
    _shopName = snapshotData['shop_name'] as String?;
    _shopOpeningHour = snapshotData['shop_opening_hour'] as DateTime?;
    _shopClosingHour = snapshotData['shop_closing_hour'] as DateTime?;
    _shopBusinessPermitNumber =
        snapshotData['shop_business_permit_number'] as String?;
    _shopLocation = snapshotData['shop_location'] as LatLng?;
    _shopBusinessPermitPic =
        snapshotData['shop_business_permit_pic'] as String?;
    _password = snapshotData['password'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _shopTowingAvailability = snapshotData['shop_towing_availability'] as bool?;
    _shopServices = getDataList(snapshotData['shop_services']);
    _riderVehicles = getDataList(snapshotData['rider_vehicles']);
    _userTransactions = getDataList(snapshotData['user_transactions']);
    _userAppointments = getDataList(snapshotData['user_appointments']);
    _shopReviews = getDataList(snapshotData['shop_reviews']);
    _shopRating = castToType<double>(snapshotData['shop_rating']);
    _shopStars = castToType<int>(snapshotData['shop_stars']);
    _shopServicesPrices = getDataList(snapshotData['shop_services_prices']);
    _shopContactNumber = snapshotData['shop_contact_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  int? userType,
  String? riderFirstName,
  String? riderLastName,
  bool? userVerified,
  String? riderPhoneNumber,
  String? riderDriverLicenseId,
  String? riderLicenseIdPic,
  String? shopName,
  DateTime? shopOpeningHour,
  DateTime? shopClosingHour,
  String? shopBusinessPermitNumber,
  LatLng? shopLocation,
  String? shopBusinessPermitPic,
  String? password,
  String? phoneNumber,
  bool? shopTowingAvailability,
  double? shopRating,
  int? shopStars,
  String? shopContactNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'user_type': userType,
      'rider_first_name': riderFirstName,
      'rider_last_name': riderLastName,
      'user_verified': userVerified,
      'rider_phone_number': riderPhoneNumber,
      'rider_driver_license_id': riderDriverLicenseId,
      'rider_license_id_pic': riderLicenseIdPic,
      'shop_name': shopName,
      'shop_opening_hour': shopOpeningHour,
      'shop_closing_hour': shopClosingHour,
      'shop_business_permit_number': shopBusinessPermitNumber,
      'shop_location': shopLocation,
      'shop_business_permit_pic': shopBusinessPermitPic,
      'password': password,
      'phone_number': phoneNumber,
      'shop_towing_availability': shopTowingAvailability,
      'shop_rating': shopRating,
      'shop_stars': shopStars,
      'shop_contact_number': shopContactNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.userType == e2?.userType &&
        e1?.riderFirstName == e2?.riderFirstName &&
        e1?.riderLastName == e2?.riderLastName &&
        e1?.userVerified == e2?.userVerified &&
        e1?.riderPhoneNumber == e2?.riderPhoneNumber &&
        e1?.riderDriverLicenseId == e2?.riderDriverLicenseId &&
        e1?.riderLicenseIdPic == e2?.riderLicenseIdPic &&
        e1?.shopName == e2?.shopName &&
        e1?.shopOpeningHour == e2?.shopOpeningHour &&
        e1?.shopClosingHour == e2?.shopClosingHour &&
        e1?.shopBusinessPermitNumber == e2?.shopBusinessPermitNumber &&
        e1?.shopLocation == e2?.shopLocation &&
        e1?.shopBusinessPermitPic == e2?.shopBusinessPermitPic &&
        e1?.password == e2?.password &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.shopTowingAvailability == e2?.shopTowingAvailability &&
        listEquality.equals(e1?.shopServices, e2?.shopServices) &&
        listEquality.equals(e1?.riderVehicles, e2?.riderVehicles) &&
        listEquality.equals(e1?.userTransactions, e2?.userTransactions) &&
        listEquality.equals(e1?.userAppointments, e2?.userAppointments) &&
        listEquality.equals(e1?.shopReviews, e2?.shopReviews) &&
        e1?.shopRating == e2?.shopRating &&
        e1?.shopStars == e2?.shopStars &&
        listEquality.equals(e1?.shopServicesPrices, e2?.shopServicesPrices) &&
        e1?.shopContactNumber == e2?.shopContactNumber;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.userType,
        e?.riderFirstName,
        e?.riderLastName,
        e?.userVerified,
        e?.riderPhoneNumber,
        e?.riderDriverLicenseId,
        e?.riderLicenseIdPic,
        e?.shopName,
        e?.shopOpeningHour,
        e?.shopClosingHour,
        e?.shopBusinessPermitNumber,
        e?.shopLocation,
        e?.shopBusinessPermitPic,
        e?.password,
        e?.phoneNumber,
        e?.shopTowingAvailability,
        e?.shopServices,
        e?.riderVehicles,
        e?.userTransactions,
        e?.userAppointments,
        e?.shopReviews,
        e?.shopRating,
        e?.shopStars,
        e?.shopServicesPrices,
        e?.shopContactNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
