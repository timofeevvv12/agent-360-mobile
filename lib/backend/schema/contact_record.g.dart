// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContactRecord> _$contactRecordSerializer =
    new _$ContactRecordSerializer();

class _$ContactRecordSerializer implements StructuredSerializer<ContactRecord> {
  @override
  final Iterable<Type> types = const [ContactRecord, _$ContactRecord];
  @override
  final String wireName = 'ContactRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ContactRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tg;
    if (value != null) {
      result
        ..add('tg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.wa;
    if (value != null) {
      result
        ..add('wa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ContactRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tg':
          result.tg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'wa':
          result.wa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ContactRecord extends ContactRecord {
  @override
  final String? tg;
  @override
  final String? wa;
  @override
  final String? phone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ContactRecord([void Function(ContactRecordBuilder)? updates]) =>
      (new ContactRecordBuilder()..update(updates))._build();

  _$ContactRecord._({this.tg, this.wa, this.phone, this.ffRef}) : super._();

  @override
  ContactRecord rebuild(void Function(ContactRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactRecordBuilder toBuilder() => new ContactRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactRecord &&
        tg == other.tg &&
        wa == other.wa &&
        phone == other.phone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, tg.hashCode), wa.hashCode), phone.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContactRecord')
          ..add('tg', tg)
          ..add('wa', wa)
          ..add('phone', phone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ContactRecordBuilder
    implements Builder<ContactRecord, ContactRecordBuilder> {
  _$ContactRecord? _$v;

  String? _tg;
  String? get tg => _$this._tg;
  set tg(String? tg) => _$this._tg = tg;

  String? _wa;
  String? get wa => _$this._wa;
  set wa(String? wa) => _$this._wa = wa;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ContactRecordBuilder() {
    ContactRecord._initializeBuilder(this);
  }

  ContactRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tg = $v.tg;
      _wa = $v.wa;
      _phone = $v.phone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactRecord;
  }

  @override
  void update(void Function(ContactRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContactRecord build() => _build();

  _$ContactRecord _build() {
    final _$result = _$v ??
        new _$ContactRecord._(tg: tg, wa: wa, phone: phone, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
