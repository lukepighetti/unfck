// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'day_model.dart';

class DayModelMapper extends ClassMapperBase<DayModel> {
  DayModelMapper._();

  static DayModelMapper? _instance;
  static DayModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DayModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DayModel';

  static const Field<DayModel, DateTime> _f$x =
      Field('x', null, mode: FieldMode.param);
  static int _$year(DayModel v) => v.year;
  static const Field<DayModel, int> _f$year =
      Field('year', _$year, mode: FieldMode.member);
  static int _$month(DayModel v) => v.month;
  static const Field<DayModel, int> _f$month =
      Field('month', _$month, mode: FieldMode.member);
  static int _$day(DayModel v) => v.day;
  static const Field<DayModel, int> _f$day =
      Field('day', _$day, mode: FieldMode.member);

  @override
  final MappableFields<DayModel> fields = const {
    #x: _f$x,
    #year: _f$year,
    #month: _f$month,
    #day: _f$day,
  };

  static DayModel _instantiate(DecodingData data) {
    return DayModel.fromDateTime(data.dec(_f$x));
  }

  @override
  final Function instantiate = _instantiate;

  static DayModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DayModel>(map);
  }

  static DayModel fromJson(String json) {
    return ensureInitialized().decodeJson<DayModel>(json);
  }
}

mixin DayModelMappable {
  String toJson() {
    return DayModelMapper.ensureInitialized()
        .encodeJson<DayModel>(this as DayModel);
  }

  Map<String, dynamic> toMap() {
    return DayModelMapper.ensureInitialized()
        .encodeMap<DayModel>(this as DayModel);
  }

  DayModelCopyWith<DayModel, DayModel, DayModel> get copyWith =>
      _DayModelCopyWithImpl(this as DayModel, $identity, $identity);
  @override
  String toString() {
    return DayModelMapper.ensureInitialized().stringifyValue(this as DayModel);
  }

  @override
  bool operator ==(Object other) {
    return DayModelMapper.ensureInitialized()
        .equalsValue(this as DayModel, other);
  }

  @override
  int get hashCode {
    return DayModelMapper.ensureInitialized().hashValue(this as DayModel);
  }
}

extension DayModelValueCopy<$R, $Out> on ObjectCopyWith<$R, DayModel, $Out> {
  DayModelCopyWith<$R, DayModel, $Out> get $asDayModel =>
      $base.as((v, t, t2) => _DayModelCopyWithImpl(v, t, t2));
}

abstract class DayModelCopyWith<$R, $In extends DayModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({required DateTime x});
  DayModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DayModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DayModel, $Out>
    implements DayModelCopyWith<$R, DayModel, $Out> {
  _DayModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DayModel> $mapper =
      DayModelMapper.ensureInitialized();
  @override
  $R call({required DateTime x}) => $apply(FieldCopyWithData({#x: x}));
  @override
  DayModel $make(CopyWithData data) => DayModel.fromDateTime(data.get(#x));

  @override
  DayModelCopyWith<$R2, DayModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DayModelCopyWithImpl($value, $cast, t);
}
