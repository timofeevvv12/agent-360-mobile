import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'contact_record.g.dart';

abstract class ContactRecord
    implements Built<ContactRecord, ContactRecordBuilder> {
  static Serializer<ContactRecord> get serializer => _$contactRecordSerializer;

  String? get tg;

  String? get wa;

  String? get phone;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ContactRecordBuilder builder) => builder
    ..tg = ''
    ..wa = ''
    ..phone = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contact');

  static Stream<ContactRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ContactRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ContactRecord._();
  factory ContactRecord([void Function(ContactRecordBuilder) updates]) =
      _$ContactRecord;

  static ContactRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createContactRecordData({
  String? tg,
  String? wa,
  String? phone,
}) {
  final firestoreData = serializers.toFirestore(
    ContactRecord.serializer,
    ContactRecord(
      (c) => c
        ..tg = tg
        ..wa = wa
        ..phone = phone,
    ),
  );

  return firestoreData;
}
