import 'package:dart_mappable/dart_mappable.dart';
import 'package:str/models/archived_thing_model.dart';
import 'package:str/models/thing_model.dart';

part 'app_model.mapper.dart';

@MappableClass()
class AppModel with AppModelMappable {
  final ThingModel? thing1;
  final ThingModel? thing2;
  final ThingModel? thing3;
  final ThingModel? thing4;
  final ThingModel? thing5;

  late final fiveThings = [thing1, thing2, thing3, thing4, thing5];

  final Set<ArchivedThingModel> history;

  late final hasAnyItems =
      [...history, ...fiveThings].whereType<ThingModel>().isNotEmpty;

  AppModel({
    required this.thing1,
    required this.thing2,
    required this.thing3,
    required this.thing4,
    required this.thing5,
    required this.history,
  });

  AppModel.create()
      : thing1 = null,
        thing2 = null,
        thing3 = null,
        thing4 = null,
        thing5 = null,
        history = {};
}
