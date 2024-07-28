// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'archived_thing_model.dart';

class ArchivedThingModelMapper extends ClassMapperBase<ArchivedThingModel> {
  ArchivedThingModelMapper._();

  static ArchivedThingModelMapper? _instance;
  static ArchivedThingModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArchivedThingModelMapper._());
      ThingModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ArchivedThingModel';

  static DateTime _$archived(ArchivedThingModel v) => v.archived;
  static const Field<ArchivedThingModel, DateTime> _f$archived =
      Field('archived', _$archived);
  static ThingModel _$thing(ArchivedThingModel v) => v.thing;
  static const Field<ArchivedThingModel, ThingModel> _f$thing =
      Field('thing', _$thing);

  @override
  final MappableFields<ArchivedThingModel> fields = const {
    #archived: _f$archived,
    #thing: _f$thing,
  };

  static ArchivedThingModel _instantiate(DecodingData data) {
    return ArchivedThingModel(
        archived: data.dec(_f$archived), thing: data.dec(_f$thing));
  }

  @override
  final Function instantiate = _instantiate;

  static ArchivedThingModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ArchivedThingModel>(map);
  }

  static ArchivedThingModel fromJson(String json) {
    return ensureInitialized().decodeJson<ArchivedThingModel>(json);
  }
}

mixin ArchivedThingModelMappable {
  String toJson() {
    return ArchivedThingModelMapper.ensureInitialized()
        .encodeJson<ArchivedThingModel>(this as ArchivedThingModel);
  }

  Map<String, dynamic> toMap() {
    return ArchivedThingModelMapper.ensureInitialized()
        .encodeMap<ArchivedThingModel>(this as ArchivedThingModel);
  }

  ArchivedThingModelCopyWith<ArchivedThingModel, ArchivedThingModel,
          ArchivedThingModel>
      get copyWith => _ArchivedThingModelCopyWithImpl(
          this as ArchivedThingModel, $identity, $identity);
  @override
  String toString() {
    return ArchivedThingModelMapper.ensureInitialized()
        .stringifyValue(this as ArchivedThingModel);
  }

  @override
  bool operator ==(Object other) {
    return ArchivedThingModelMapper.ensureInitialized()
        .equalsValue(this as ArchivedThingModel, other);
  }

  @override
  int get hashCode {
    return ArchivedThingModelMapper.ensureInitialized()
        .hashValue(this as ArchivedThingModel);
  }
}

extension ArchivedThingModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArchivedThingModel, $Out> {
  ArchivedThingModelCopyWith<$R, ArchivedThingModel, $Out>
      get $asArchivedThingModel =>
          $base.as((v, t, t2) => _ArchivedThingModelCopyWithImpl(v, t, t2));
}

abstract class ArchivedThingModelCopyWith<$R, $In extends ArchivedThingModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ThingModelCopyWith<$R, ThingModel, ThingModel> get thing;
  $R call({DateTime? archived, ThingModel? thing});
  ArchivedThingModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ArchivedThingModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArchivedThingModel, $Out>
    implements ArchivedThingModelCopyWith<$R, ArchivedThingModel, $Out> {
  _ArchivedThingModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArchivedThingModel> $mapper =
      ArchivedThingModelMapper.ensureInitialized();
  @override
  ThingModelCopyWith<$R, ThingModel, ThingModel> get thing =>
      $value.thing.copyWith.$chain((v) => call(thing: v));
  @override
  $R call({DateTime? archived, ThingModel? thing}) => $apply(FieldCopyWithData({
        if (archived != null) #archived: archived,
        if (thing != null) #thing: thing
      }));
  @override
  ArchivedThingModel $make(CopyWithData data) => ArchivedThingModel(
      archived: data.get(#archived, or: $value.archived),
      thing: data.get(#thing, or: $value.thing));

  @override
  ArchivedThingModelCopyWith<$R2, ArchivedThingModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ArchivedThingModelCopyWithImpl($value, $cast, t);
}
