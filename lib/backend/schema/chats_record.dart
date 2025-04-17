import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  // "lastMessageTimestamp" field.
  DateTime? _lastMessageTimestamp;
  DateTime? get lastMessageTimestamp => _lastMessageTimestamp;
  bool hasLastMessageTimestamp() => _lastMessageTimestamp != null;

  // "lastMessage" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  bool hasLastMessage() => _lastMessage != null;

  // "shop_reference" field.
  DocumentReference? _shopReference;
  DocumentReference? get shopReference => _shopReference;
  bool hasShopReference() => _shopReference != null;

  // "rider_reference" field.
  DocumentReference? _riderReference;
  DocumentReference? get riderReference => _riderReference;
  bool hasRiderReference() => _riderReference != null;

  // "messages" field.
  List<DocumentReference>? _messages;
  List<DocumentReference> get messages => _messages ?? const [];
  bool hasMessages() => _messages != null;

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
    _users = snapshotData['users'] as DocumentReference?;
    _lastMessageTimestamp = snapshotData['lastMessageTimestamp'] as DateTime?;
    _lastMessage = snapshotData['lastMessage'] as String?;
    _shopReference = snapshotData['shop_reference'] as DocumentReference?;
    _riderReference = snapshotData['rider_reference'] as DocumentReference?;
    _messages = getDataList(snapshotData['messages']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  DocumentReference? users,
  DateTime? lastMessageTimestamp,
  String? lastMessage,
  DocumentReference? shopReference,
  DocumentReference? riderReference,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'users': users,
      'lastMessageTimestamp': lastMessageTimestamp,
      'lastMessage': lastMessage,
      'shop_reference': shopReference,
      'rider_reference': riderReference,
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

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.users == e2?.users &&
        e1?.lastMessageTimestamp == e2?.lastMessageTimestamp &&
        e1?.lastMessage == e2?.lastMessage &&
        e1?.shopReference == e2?.shopReference &&
        e1?.riderReference == e2?.riderReference &&
        listEquality.equals(e1?.messages, e2?.messages) &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.users,
        e?.lastMessageTimestamp,
        e?.lastMessage,
        e?.shopReference,
        e?.riderReference,
        e?.messages,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
