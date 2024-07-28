// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'goal_model.dart';

class GoalModelMapper extends ClassMapperBase<GoalModel> {
  GoalModelMapper._();

  static GoalModelMapper? _instance;
  static GoalModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GoalModelMapper._());
      DayModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'GoalModel';

  static String _$id(GoalModel v) => v.id;
  static const Field<GoalModel, String> _f$id = Field('id', _$id);
  static String _$defaultTitle(GoalModel v) => v.defaultTitle;
  static const Field<GoalModel, String> _f$defaultTitle =
      Field('defaultTitle', _$defaultTitle);
  static String? _$customTitle(GoalModel v) => v.customTitle;
  static const Field<GoalModel, String> _f$customTitle =
      Field('customTitle', _$customTitle);
  static Set<DayModel> _$completions(GoalModel v) => v.completions;
  static const Field<GoalModel, Set<DayModel>> _f$completions =
      Field('completions', _$completions);
  static bool _$hidden(GoalModel v) => v.hidden;
  static const Field<GoalModel, bool> _f$hidden = Field('hidden', _$hidden);
  static double _$order(GoalModel v) => v.order;
  static const Field<GoalModel, double> _f$order = Field('order', _$order);
  static String _$title(GoalModel v) => v.title;
  static const Field<GoalModel, String> _f$title =
      Field('title', _$title, mode: FieldMode.member);
  static bool _$completedToday(GoalModel v) => v.completedToday;
  static const Field<GoalModel, bool> _f$completedToday =
      Field('completedToday', _$completedToday, mode: FieldMode.member);

  @override
  final MappableFields<GoalModel> fields = const {
    #id: _f$id,
    #defaultTitle: _f$defaultTitle,
    #customTitle: _f$customTitle,
    #completions: _f$completions,
    #hidden: _f$hidden,
    #order: _f$order,
    #title: _f$title,
    #completedToday: _f$completedToday,
  };

  static GoalModel _instantiate(DecodingData data) {
    return GoalModel(
        id: data.dec(_f$id),
        defaultTitle: data.dec(_f$defaultTitle),
        customTitle: data.dec(_f$customTitle),
        completions: data.dec(_f$completions),
        hidden: data.dec(_f$hidden),
        order: data.dec(_f$order));
  }

  @override
  final Function instantiate = _instantiate;

  static GoalModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GoalModel>(map);
  }

  static GoalModel fromJson(String json) {
    return ensureInitialized().decodeJson<GoalModel>(json);
  }
}

mixin GoalModelMappable {
  String toJson() {
    return GoalModelMapper.ensureInitialized()
        .encodeJson<GoalModel>(this as GoalModel);
  }

  Map<String, dynamic> toMap() {
    return GoalModelMapper.ensureInitialized()
        .encodeMap<GoalModel>(this as GoalModel);
  }

  GoalModelCopyWith<GoalModel, GoalModel, GoalModel> get copyWith =>
      _GoalModelCopyWithImpl(this as GoalModel, $identity, $identity);
  @override
  String toString() {
    return GoalModelMapper.ensureInitialized()
        .stringifyValue(this as GoalModel);
  }

  @override
  bool operator ==(Object other) {
    return GoalModelMapper.ensureInitialized()
        .equalsValue(this as GoalModel, other);
  }

  @override
  int get hashCode {
    return GoalModelMapper.ensureInitialized().hashValue(this as GoalModel);
  }
}

extension GoalModelValueCopy<$R, $Out> on ObjectCopyWith<$R, GoalModel, $Out> {
  GoalModelCopyWith<$R, GoalModel, $Out> get $asGoalModel =>
      $base.as((v, t, t2) => _GoalModelCopyWithImpl(v, t, t2));
}

abstract class GoalModelCopyWith<$R, $In extends GoalModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? defaultTitle,
      String? customTitle,
      Set<DayModel>? completions,
      bool? hidden,
      double? order});
  GoalModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GoalModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GoalModel, $Out>
    implements GoalModelCopyWith<$R, GoalModel, $Out> {
  _GoalModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GoalModel> $mapper =
      GoalModelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? defaultTitle,
          Object? customTitle = $none,
          Set<DayModel>? completions,
          bool? hidden,
          double? order}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (defaultTitle != null) #defaultTitle: defaultTitle,
        if (customTitle != $none) #customTitle: customTitle,
        if (completions != null) #completions: completions,
        if (hidden != null) #hidden: hidden,
        if (order != null) #order: order
      }));
  @override
  GoalModel $make(CopyWithData data) => GoalModel(
      id: data.get(#id, or: $value.id),
      defaultTitle: data.get(#defaultTitle, or: $value.defaultTitle),
      customTitle: data.get(#customTitle, or: $value.customTitle),
      completions: data.get(#completions, or: $value.completions),
      hidden: data.get(#hidden, or: $value.hidden),
      order: data.get(#order, or: $value.order));

  @override
  GoalModelCopyWith<$R2, GoalModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GoalModelCopyWithImpl($value, $cast, t);
}
