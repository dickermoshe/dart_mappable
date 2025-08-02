// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'encoding_params_test.dart';

class BMapper extends EnumMapper<B> {
  BMapper._();

  static BMapper? _instance;
  static BMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BMapper._());
    }
    return _instance!;
  }

  static B fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  B decode(dynamic value) {
    switch (value) {
      case r'a':
        return B.a;
      case r'bB':
        return B.bB;
      case r'ccCc':
        return B.ccCc;
      default:
        return B.values[0];
    }
  }

  @override
  dynamic encode(B self) {
    switch (self) {
      case B.a:
        return r'a';
      case B.bB:
        return r'bB';
      case B.ccCc:
        return r'ccCc';
    }
  }
}

extension BMapperExtension on B {
  String toValue() {
    BMapper.ensureInitialized();
    return MapperContainer.globals.toValue<B>(this) as String;
  }
}

class AMapper extends ClassMapperBase<A> {
  AMapper._();

  static AMapper? _instance;
  static AMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AMapper._());
      BMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'A';

  static String _$a(A v) => v.a;
  static const Field<A, String> _f$a = Field('a', _$a);
  static B? _$b(A v) => v.b;
  static const Field<A, B> _f$b = Field('b', _$b, opt: true);

  @override
  final MappableFields<A> fields = const {#a: _f$a, #b: _f$b};
  @override
  final bool shallowEncoding = true;
  @override
  bool includeTypeId<T>(_) => false;

  static A _instantiate(DecodingData data) {
    return A(data.dec(_f$a), b: data.dec(_f$b));
  }

  @override
  final Function instantiate = _instantiate;

  static A fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<A>(map);
  }

  static A fromJson(String json) {
    return ensureInitialized().decodeJson<A>(json);
  }
}

mixin AMappable {
  String toJson() {
    return AMapper.ensureInitialized().encodeJson<A>(this as A);
  }

  Map<String, dynamic> toMap() {
    return AMapper.ensureInitialized().encodeMap<A>(this as A);
  }

  ACopyWith<A, A, A> get copyWith =>
      _ACopyWithImpl<A, A>(this as A, $identity, $identity);
  @override
  String toString() {
    return AMapper.ensureInitialized().stringifyValue(this as A);
  }

  @override
  bool operator ==(Object other) {
    return AMapper.ensureInitialized().equalsValue(this as A, other);
  }

  @override
  int get hashCode {
    return AMapper.ensureInitialized().hashValue(this as A);
  }
}

extension AValueCopy<$R, $Out> on ObjectCopyWith<$R, A, $Out> {
  ACopyWith<$R, A, $Out> get $asA =>
      $base.as((v, t, t2) => _ACopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ACopyWith<$R, $In extends A, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? a, B? b});
  ACopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ACopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, A, $Out>
    implements ACopyWith<$R, A, $Out> {
  _ACopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<A> $mapper = AMapper.ensureInitialized();
  @override
  $R call({String? a, Object? b = $none}) =>
      $apply(FieldCopyWithData({if (a != null) #a: a, if (b != $none) #b: b}));
  @override
  A $make(CopyWithData data) => A(
    data.get(#a, or: $value.a),
    b: data.get(#b, or: $value.b),
  );

  @override
  ACopyWith<$R2, A, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ACopyWithImpl<$R2, $Out2>($value, $cast, t);
}

