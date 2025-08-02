// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'primitives_test.dart';

class ItemsMapper extends ClassMapperBase<Items> {
  ItemsMapper._();

  static ItemsMapper? _instance;
  static ItemsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemsMapper._());
      ItemMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Items';

  static List<Item> _$items(Items v) => v.items;
  static const Field<Items, List<Item>> _f$items = Field('items', _$items);
  static Map<int, Item> _$items2(Items v) => v.items2;
  static const Field<Items, Map<int, Item>> _f$items2 = Field(
    'items2',
    _$items2,
  );

  @override
  final MappableFields<Items> fields = const {
    #items: _f$items,
    #items2: _f$items2,
  };

  static Items _instantiate(DecodingData data) {
    return Items(data.dec(_f$items), data.dec(_f$items2));
  }

  @override
  final Function instantiate = _instantiate;

  static Items fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Items>(map);
  }

  static Items fromJson(String json) {
    return ensureInitialized().decodeJson<Items>(json);
  }
}

mixin ItemsMappable {
  String toJson() {
    return ItemsMapper.ensureInitialized().encodeJson<Items>(this as Items);
  }

  Map<String, dynamic> toMap() {
    return ItemsMapper.ensureInitialized().encodeMap<Items>(this as Items);
  }

  ItemsCopyWith<Items, Items, Items> get copyWith =>
      _ItemsCopyWithImpl<Items, Items>(this as Items, $identity, $identity);
  @override
  String toString() {
    return ItemsMapper.ensureInitialized().stringifyValue(this as Items);
  }

  @override
  bool operator ==(Object other) {
    return ItemsMapper.ensureInitialized().equalsValue(this as Items, other);
  }

  @override
  int get hashCode {
    return ItemsMapper.ensureInitialized().hashValue(this as Items);
  }
}

extension ItemsValueCopy<$R, $Out> on ObjectCopyWith<$R, Items, $Out> {
  ItemsCopyWith<$R, Items, $Out> get $asItems =>
      $base.as((v, t, t2) => _ItemsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ItemsCopyWith<$R, $In extends Items, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Item, ItemCopyWith<$R, Item, Item>> get items;
  MapCopyWith<$R, int, Item, ItemCopyWith<$R, Item, Item>> get items2;
  $R call({List<Item>? items, Map<int, Item>? items2});
  ItemsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemsCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Items, $Out>
    implements ItemsCopyWith<$R, Items, $Out> {
  _ItemsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Items> $mapper = ItemsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Item, ItemCopyWith<$R, Item, Item>> get items =>
      ListCopyWith(
        $value.items,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(items: v),
      );
  @override
  MapCopyWith<$R, int, Item, ItemCopyWith<$R, Item, Item>> get items2 =>
      MapCopyWith(
        $value.items2,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(items2: v),
      );
  @override
  $R call({List<Item>? items, Map<int, Item>? items2}) => $apply(
    FieldCopyWithData({
      if (items != null) #items: items,
      if (items2 != null) #items2: items2,
    }),
  );
  @override
  Items $make(CopyWithData data) => Items(
    data.get(#items, or: $value.items),
    data.get(#items2, or: $value.items2),
  );

  @override
  ItemsCopyWith<$R2, Items, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ItemsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ItemMapper extends ClassMapperBase<Item> {
  ItemMapper._();

  static ItemMapper? _instance;
  static ItemMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Item';

  static int _$index(Item v) => v.index;
  static const Field<Item, int> _f$index = Field('index', _$index);

  @override
  final MappableFields<Item> fields = const {#index: _f$index};

  static Item _instantiate(DecodingData data) {
    return Item(data.dec(_f$index));
  }

  @override
  final Function instantiate = _instantiate;

  static Item fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Item>(map);
  }

  static Item fromJson(String json) {
    return ensureInitialized().decodeJson<Item>(json);
  }
}

mixin ItemMappable {
  String toJson() {
    return ItemMapper.ensureInitialized().encodeJson<Item>(this as Item);
  }

  Map<String, dynamic> toMap() {
    return ItemMapper.ensureInitialized().encodeMap<Item>(this as Item);
  }

  ItemCopyWith<Item, Item, Item> get copyWith =>
      _ItemCopyWithImpl<Item, Item>(this as Item, $identity, $identity);
  @override
  String toString() {
    return ItemMapper.ensureInitialized().stringifyValue(this as Item);
  }

  @override
  bool operator ==(Object other) {
    return ItemMapper.ensureInitialized().equalsValue(this as Item, other);
  }

  @override
  int get hashCode {
    return ItemMapper.ensureInitialized().hashValue(this as Item);
  }
}

extension ItemValueCopy<$R, $Out> on ObjectCopyWith<$R, Item, $Out> {
  ItemCopyWith<$R, Item, $Out> get $asItem =>
      $base.as((v, t, t2) => _ItemCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ItemCopyWith<$R, $In extends Item, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? index});
  ItemCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ItemCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Item, $Out>
    implements ItemCopyWith<$R, Item, $Out> {
  _ItemCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Item> $mapper = ItemMapper.ensureInitialized();
  @override
  $R call({int? index}) =>
      $apply(FieldCopyWithData({if (index != null) #index: index}));
  @override
  Item $make(CopyWithData data) => Item(data.get(#index, or: $value.index));

  @override
  ItemCopyWith<$R2, Item, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ItemCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

