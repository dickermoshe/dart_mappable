// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'main.dart';

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

  static IList<B> _$list(A v) => v.list;
  static const Field<A, IList<B>> _f$list = Field('list', _$list);

  @override
  final MappableFields<A> fields = const {#list: _f$list};

  static A _instantiate(DecodingData data) {
    return A(data.dec(_f$list));
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
      _ACopyWithImpl(this as A, $identity, $identity);
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
      $base.as((v, t, t2) => _ACopyWithImpl(v, t, t2));
}

abstract class ACopyWith<$R, $In extends A, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({IList<B>? list});
  ACopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ACopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, A, $Out>
    implements ACopyWith<$R, A, $Out> {
  _ACopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<A> $mapper = AMapper.ensureInitialized();
  @override
  $R call({IList<B>? list}) =>
      $apply(FieldCopyWithData({if (list != null) #list: list}));
  @override
  A $make(CopyWithData data) => A(data.get(#list, or: $value.list));

  @override
  ACopyWith<$R2, A, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ACopyWithImpl($value, $cast, t);
}

class BMapper extends ClassMapperBase<B> {
  BMapper._();

  static BMapper? _instance;
  static BMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'B';

  static String _$str(B v) => v.str;
  static const Field<B, String> _f$str = Field('str', _$str);

  @override
  final MappableFields<B> fields = const {#str: _f$str};

  static B _instantiate(DecodingData data) {
    return B(data.dec(_f$str));
  }

  @override
  final Function instantiate = _instantiate;

  static B fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<B>(map);
  }

  static B fromJson(String json) {
    return ensureInitialized().decodeJson<B>(json);
  }
}

mixin BMappable {
  String toJson() {
    return BMapper.ensureInitialized().encodeJson<B>(this as B);
  }

  Map<String, dynamic> toMap() {
    return BMapper.ensureInitialized().encodeMap<B>(this as B);
  }

  BCopyWith<B, B, B> get copyWith =>
      _BCopyWithImpl(this as B, $identity, $identity);
  @override
  String toString() {
    return BMapper.ensureInitialized().stringifyValue(this as B);
  }

  @override
  bool operator ==(Object other) {
    return BMapper.ensureInitialized().equalsValue(this as B, other);
  }

  @override
  int get hashCode {
    return BMapper.ensureInitialized().hashValue(this as B);
  }
}

extension BValueCopy<$R, $Out> on ObjectCopyWith<$R, B, $Out> {
  BCopyWith<$R, B, $Out> get $asB =>
      $base.as((v, t, t2) => _BCopyWithImpl(v, t, t2));
}

abstract class BCopyWith<$R, $In extends B, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? str});
  BCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, B, $Out>
    implements BCopyWith<$R, B, $Out> {
  _BCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<B> $mapper = BMapper.ensureInitialized();
  @override
  $R call({String? str}) =>
      $apply(FieldCopyWithData({if (str != null) #str: str}));
  @override
  B $make(CopyWithData data) => B(data.get(#str, or: $value.str));

  @override
  BCopyWith<$R2, B, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _BCopyWithImpl($value, $cast, t);
}
