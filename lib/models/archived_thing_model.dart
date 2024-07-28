import 'package:dart_mappable/dart_mappable.dart';
import 'package:str/models/thing_model.dart';

part 'archived_thing_model.mapper.dart';

@MappableClass()
class ArchivedThingModel with ArchivedThingModelMappable {
  final DateTime archived;
  final ThingModel thing;

  ArchivedThingModel({
    required this.archived,
    required this.thing,
  });
}
