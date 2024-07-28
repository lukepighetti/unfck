// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'app_model.dart';

class AppModelMapper extends ClassMapperBase<AppModel> {
  AppModelMapper._();

  static AppModelMapper? _instance;
  static AppModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AppModelMapper._());
      ThingModelMapper.ensureInitialized();
      ArchivedThingModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AppModel';

  static ThingModel? _$thing1(AppModel v) => v.thing1;
  static const Field<AppModel, ThingModel> _f$thing1 =
      Field('thing1', _$thing1);
  static ThingModel? _$thing2(AppModel v) => v.thing2;
  static const Field<AppModel, ThingModel> _f$thing2 =
      Field('thing2', _$thing2);
  static ThingModel? _$thing3(AppModel v) => v.thing3;
  static const Field<AppModel, ThingModel> _f$thing3 =
      Field('thing3', _$thing3);
  static ThingModel? _$thing4(AppModel v) => v.thing4;
  static const Field<AppModel, ThingModel> _f$thing4 =
      Field('thing4', _$thing4);
  static ThingModel? _$thing5(AppModel v) => v.thing5;
  static const Field<AppModel, ThingModel> _f$thing5 =
      Field('thing5', _$thing5);
  static Set<ArchivedThingModel> _$history(AppModel v) => v.history;
  static const Field<AppModel, Set<ArchivedThingModel>> _f$history =
      Field('history', _$history);
  static List<ThingModel?> _$fiveThings(AppModel v) => v.fiveThings;
  static const Field<AppModel, List<ThingModel?>> _f$fiveThings =
      Field('fiveThings', _$fiveThings, mode: FieldMode.member);
  static bool _$hasAnyItems(AppModel v) => v.hasAnyItems;
  static const Field<AppModel, bool> _f$hasAnyItems =
      Field('hasAnyItems', _$hasAnyItems, mode: FieldMode.member);

  @override
  final MappableFields<AppModel> fields = const {
    #thing1: _f$thing1,
    #thing2: _f$thing2,
    #thing3: _f$thing3,
    #thing4: _f$thing4,
    #thing5: _f$thing5,
    #history: _f$history,
    #fiveThings: _f$fiveThings,
    #hasAnyItems: _f$hasAnyItems,
  };

  static AppModel _instantiate(DecodingData data) {
    return AppModel(
        thing1: data.dec(_f$thing1),
        thing2: data.dec(_f$thing2),
        thing3: data.dec(_f$thing3),
        thing4: data.dec(_f$thing4),
        thing5: data.dec(_f$thing5),
        history: data.dec(_f$history));
  }

  @override
  final Function instantiate = _instantiate;

  static AppModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AppModel>(map);
  }

  static AppModel fromJson(String json) {
    return ensureInitialized().decodeJson<AppModel>(json);
  }
}

mixin AppModelMappable {
  String toJson() {
    return AppModelMapper.ensureInitialized()
        .encodeJson<AppModel>(this as AppModel);
  }

  Map<String, dynamic> toMap() {
    return AppModelMapper.ensureInitialized()
        .encodeMap<AppModel>(this as AppModel);
  }

  AppModelCopyWith<AppModel, AppModel, AppModel> get copyWith =>
      _AppModelCopyWithImpl(this as AppModel, $identity, $identity);
  @override
  String toString() {
    return AppModelMapper.ensureInitialized().stringifyValue(this as AppModel);
  }

  @override
  bool operator ==(Object other) {
    return AppModelMapper.ensureInitialized()
        .equalsValue(this as AppModel, other);
  }

  @override
  int get hashCode {
    return AppModelMapper.ensureInitialized().hashValue(this as AppModel);
  }
}

extension AppModelValueCopy<$R, $Out> on ObjectCopyWith<$R, AppModel, $Out> {
  AppModelCopyWith<$R, AppModel, $Out> get $asAppModel =>
      $base.as((v, t, t2) => _AppModelCopyWithImpl(v, t, t2));
}

abstract class AppModelCopyWith<$R, $In extends AppModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing1;
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing2;
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing3;
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing4;
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing5;
  $R call(
      {ThingModel? thing1,
      ThingModel? thing2,
      ThingModel? thing3,
      ThingModel? thing4,
      ThingModel? thing5,
      Set<ArchivedThingModel>? history});
  AppModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AppModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AppModel, $Out>
    implements AppModelCopyWith<$R, AppModel, $Out> {
  _AppModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AppModel> $mapper =
      AppModelMapper.ensureInitialized();
  @override
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing1 =>
      $value.thing1?.copyWith.$chain((v) => call(thing1: v));
  @override
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing2 =>
      $value.thing2?.copyWith.$chain((v) => call(thing2: v));
  @override
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing3 =>
      $value.thing3?.copyWith.$chain((v) => call(thing3: v));
  @override
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing4 =>
      $value.thing4?.copyWith.$chain((v) => call(thing4: v));
  @override
  ThingModelCopyWith<$R, ThingModel, ThingModel>? get thing5 =>
      $value.thing5?.copyWith.$chain((v) => call(thing5: v));
  @override
  $R call(
          {Object? thing1 = $none,
          Object? thing2 = $none,
          Object? thing3 = $none,
          Object? thing4 = $none,
          Object? thing5 = $none,
          Set<ArchivedThingModel>? history}) =>
      $apply(FieldCopyWithData({
        if (thing1 != $none) #thing1: thing1,
        if (thing2 != $none) #thing2: thing2,
        if (thing3 != $none) #thing3: thing3,
        if (thing4 != $none) #thing4: thing4,
        if (thing5 != $none) #thing5: thing5,
        if (history != null) #history: history
      }));
  @override
  AppModel $make(CopyWithData data) => AppModel(
      thing1: data.get(#thing1, or: $value.thing1),
      thing2: data.get(#thing2, or: $value.thing2),
      thing3: data.get(#thing3, or: $value.thing3),
      thing4: data.get(#thing4, or: $value.thing4),
      thing5: data.get(#thing5, or: $value.thing5),
      history: data.get(#history, or: $value.history));

  @override
  AppModelCopyWith<$R2, AppModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AppModelCopyWithImpl($value, $cast, t);
}
