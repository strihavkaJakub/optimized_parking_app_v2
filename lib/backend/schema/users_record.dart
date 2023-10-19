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

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "car" field.
  DocumentReference? _car;
  DocumentReference? get car => _car;
  bool hasCar() => _car != null;

  // "payment" field.
  DocumentReference? _payment;
  DocumentReference? get payment => _payment;
  bool hasPayment() => _payment != null;

  // "chargingSpot" field.
  DocumentReference? _chargingSpot;
  DocumentReference? get chargingSpot => _chargingSpot;
  bool hasChargingSpot() => _chargingSpot != null;

  // "parkingPrice" field.
  double? _parkingPrice;
  double get parkingPrice => _parkingPrice ?? 0.0;
  bool hasParkingPrice() => _parkingPrice != null;

  // "chargingPrice" field.
  double? _chargingPrice;
  double get chargingPrice => _chargingPrice ?? 0.0;
  bool hasChargingPrice() => _chargingPrice != null;

  // "reservationPrice" field.
  double? _reservationPrice;
  double get reservationPrice => _reservationPrice ?? 0.0;
  bool hasReservationPrice() => _reservationPrice != null;

  // "isParkingPricePayed" field.
  bool? _isParkingPricePayed;
  bool get isParkingPricePayed => _isParkingPricePayed ?? false;
  bool hasIsParkingPricePayed() => _isParkingPricePayed != null;

  // "isChargingPricePayed" field.
  bool? _isChargingPricePayed;
  bool get isChargingPricePayed => _isChargingPricePayed ?? false;
  bool hasIsChargingPricePayed() => _isChargingPricePayed != null;

  // "isReservationPricePayed" field.
  bool? _isReservationPricePayed;
  bool get isReservationPricePayed => _isReservationPricePayed ?? false;
  bool hasIsReservationPricePayed() => _isReservationPricePayed != null;

  // "reservation" field.
  DocumentReference? _reservation;
  DocumentReference? get reservation => _reservation;
  bool hasReservation() => _reservation != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _password = snapshotData['password'] as String?;
    _uid = snapshotData['uid'] as String?;
    _car = snapshotData['car'] as DocumentReference?;
    _payment = snapshotData['payment'] as DocumentReference?;
    _chargingSpot = snapshotData['chargingSpot'] as DocumentReference?;
    _parkingPrice = castToType<double>(snapshotData['parkingPrice']);
    _chargingPrice = castToType<double>(snapshotData['chargingPrice']);
    _reservationPrice = castToType<double>(snapshotData['reservationPrice']);
    _isParkingPricePayed = snapshotData['isParkingPricePayed'] as bool?;
    _isChargingPricePayed = snapshotData['isChargingPricePayed'] as bool?;
    _isReservationPricePayed = snapshotData['isReservationPricePayed'] as bool?;
    _reservation = snapshotData['reservation'] as DocumentReference?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
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
  DateTime? createdTime,
  String? email,
  String? displayName,
  String? password,
  String? uid,
  DocumentReference? car,
  DocumentReference? payment,
  DocumentReference? chargingSpot,
  double? parkingPrice,
  double? chargingPrice,
  double? reservationPrice,
  bool? isParkingPricePayed,
  bool? isChargingPricePayed,
  bool? isReservationPricePayed,
  DocumentReference? reservation,
  String? photoUrl,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'email': email,
      'display_name': displayName,
      'password': password,
      'uid': uid,
      'car': car,
      'payment': payment,
      'chargingSpot': chargingSpot,
      'parkingPrice': parkingPrice,
      'chargingPrice': chargingPrice,
      'reservationPrice': reservationPrice,
      'isParkingPricePayed': isParkingPricePayed,
      'isChargingPricePayed': isChargingPricePayed,
      'isReservationPricePayed': isReservationPricePayed,
      'reservation': reservation,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.password == e2?.password &&
        e1?.uid == e2?.uid &&
        e1?.car == e2?.car &&
        e1?.payment == e2?.payment &&
        e1?.chargingSpot == e2?.chargingSpot &&
        e1?.parkingPrice == e2?.parkingPrice &&
        e1?.chargingPrice == e2?.chargingPrice &&
        e1?.reservationPrice == e2?.reservationPrice &&
        e1?.isParkingPricePayed == e2?.isParkingPricePayed &&
        e1?.isChargingPricePayed == e2?.isChargingPricePayed &&
        e1?.isReservationPricePayed == e2?.isReservationPricePayed &&
        e1?.reservation == e2?.reservation &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.email,
        e?.displayName,
        e?.password,
        e?.uid,
        e?.car,
        e?.payment,
        e?.chargingSpot,
        e?.parkingPrice,
        e?.chargingPrice,
        e?.reservationPrice,
        e?.isParkingPricePayed,
        e?.isChargingPricePayed,
        e?.isReservationPricePayed,
        e?.reservation,
        e?.photoUrl,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
