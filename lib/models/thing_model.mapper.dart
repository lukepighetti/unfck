// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'thing_model.dart';

class ThingModelMapper extends ClassMapperBase<ThingModel> {
  ThingModelMapper._();

  static ThingModelMapper? _instance;
  static ThingModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ThingModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ThingModel';

  static String _$id(ThingModel v) => v.id;
  static const Field<ThingModel, String> _f$id = Field('id', _$id);
  static String _$summary(ThingModel v) => v.summary;
  static const Field<ThingModel, String> _f$summary =
      Field('summary', _$summary);
  static String _$outline(ThingModel v) => v.outline;
  static const Field<ThingModel, String> _f$outline =
      Field('outline', _$outline);
  static String _$resolution(ThingModel v) => v.resolution;
  static const Field<ThingModel, String> _f$resolution =
      Field('resolution', _$resolution);
  static DateTime _$created(ThingModel v) => v.created;
  static const Field<ThingModel, DateTime> _f$created =
      Field('created', _$created);
  static bool _$favorite(ThingModel v) => v.favorite;
  static const Field<ThingModel, bool> _f$favorite =
      Field('favorite', _$favorite);
  static List<String> _$aiQuestions(ThingModel v) => v.aiQuestions;
  static const Field<ThingModel, List<String>> _f$aiQuestions =
      Field('aiQuestions', _$aiQuestions);
  static bool _$aiQuestionsLoading(ThingModel v) => v.aiQuestionsLoading;
  static const Field<ThingModel, bool> _f$aiQuestionsLoading =
      Field('aiQuestionsLoading', _$aiQuestionsLoading);

  @override
  final MappableFields<ThingModel> fields = const {
    #id: _f$id,
    #summary: _f$summary,
    #outline: _f$outline,
    #resolution: _f$resolution,
    #created: _f$created,
    #favorite: _f$favorite,
    #aiQuestions: _f$aiQuestions,
    #aiQuestionsLoading: _f$aiQuestionsLoading,
  };

  static ThingModel _instantiate(DecodingData data) {
    return ThingModel(
        id: data.dec(_f$id),
        summary: data.dec(_f$summary),
        outline: data.dec(_f$outline),
        resolution: data.dec(_f$resolution),
        created: data.dec(_f$created),
        favorite: data.dec(_f$favorite),
        aiQuestions: data.dec(_f$aiQuestions),
        aiQuestionsLoading: data.dec(_f$aiQuestionsLoading));
  }

  @override
  final Function instantiate = _instantiate;

  static ThingModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ThingModel>(map);
  }

  static ThingModel fromJson(String json) {
    return ensureInitialized().decodeJson<ThingModel>(json);
  }
}

mixin ThingModelMappable {
  String toJson() {
    return ThingModelMapper.ensureInitialized()
        .encodeJson<ThingModel>(this as ThingModel);
  }

  Map<String, dynamic> toMap() {
    return ThingModelMapper.ensureInitialized()
        .encodeMap<ThingModel>(this as ThingModel);
  }

  ThingModelCopyWith<ThingModel, ThingModel, ThingModel> get copyWith =>
      _ThingModelCopyWithImpl(this as ThingModel, $identity, $identity);
  @override
  String toString() {
    return ThingModelMapper.ensureInitialized()
        .stringifyValue(this as ThingModel);
  }

  @override
  bool operator ==(Object other) {
    return ThingModelMapper.ensureInitialized()
        .equalsValue(this as ThingModel, other);
  }

  @override
  int get hashCode {
    return ThingModelMapper.ensureInitialized().hashValue(this as ThingModel);
  }
}

extension ThingModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ThingModel, $Out> {
  ThingModelCopyWith<$R, ThingModel, $Out> get $asThingModel =>
      $base.as((v, t, t2) => _ThingModelCopyWithImpl(v, t, t2));
}

abstract class ThingModelCopyWith<$R, $In extends ThingModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get aiQuestions;
  $R call(
      {String? id,
      String? summary,
      String? outline,
      String? resolution,
      DateTime? created,
      bool? favorite,
      List<String>? aiQuestions,
      bool? aiQuestionsLoading});
  ThingModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ThingModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ThingModel, $Out>
    implements ThingModelCopyWith<$R, ThingModel, $Out> {
  _ThingModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ThingModel> $mapper =
      ThingModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>
      get aiQuestions => ListCopyWith(
          $value.aiQuestions,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(aiQuestions: v));
  @override
  $R call(
          {String? id,
          String? summary,
          String? outline,
          String? resolution,
          DateTime? created,
          bool? favorite,
          List<String>? aiQuestions,
          bool? aiQuestionsLoading}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (summary != null) #summary: summary,
        if (outline != null) #outline: outline,
        if (resolution != null) #resolution: resolution,
        if (created != null) #created: created,
        if (favorite != null) #favorite: favorite,
        if (aiQuestions != null) #aiQuestions: aiQuestions,
        if (aiQuestionsLoading != null) #aiQuestionsLoading: aiQuestionsLoading
      }));
  @override
  ThingModel $make(CopyWithData data) => ThingModel(
      id: data.get(#id, or: $value.id),
      summary: data.get(#summary, or: $value.summary),
      outline: data.get(#outline, or: $value.outline),
      resolution: data.get(#resolution, or: $value.resolution),
      created: data.get(#created, or: $value.created),
      favorite: data.get(#favorite, or: $value.favorite),
      aiQuestions: data.get(#aiQuestions, or: $value.aiQuestions),
      aiQuestionsLoading:
          data.get(#aiQuestionsLoading, or: $value.aiQuestionsLoading));

  @override
  ThingModelCopyWith<$R2, ThingModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ThingModelCopyWithImpl($value, $cast, t);
}
