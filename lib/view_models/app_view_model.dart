import 'package:flutter/material.dart';
import 'package:str/di.dart';
import 'package:str/models/app_model.dart';
import 'package:str/models/thing_model.dart';

class AppViewModel extends ValueNotifier<AppModel> {
  AppViewModel() : super(AppModel.create());

  void initialize() {
    try {
      final x = di.prefs.getString('app-view-model');
      if (x == null) throw Exception("Data not found in shared_preferences");
      value = AppModelMapper.fromJson(x);
    } catch (e) {
      debugPrint("failed to hydrate: $e");
    }
  }

  void setThingIfEmpty(int n, ThingModel thing) {
    assert(n >= 1 && n <= 5, "There is a maximum of five things");
    var x = value;
    if (n == 1 && x.thing1 == null) x = x.copyWith(thing1: thing);
    if (n == 2 && x.thing2 == null) x = x.copyWith(thing2: thing);
    if (n == 3 && x.thing3 == null) x = x.copyWith(thing3: thing);
    if (n == 4 && x.thing4 == null) x = x.copyWith(thing4: thing);
    if (n == 5 && x.thing5 == null) x = x.copyWith(thing5: thing);
    value = x;
  }

  void updateThing(ThingModel thing) {
    var x = value;
    if (x.thing1?.id == thing.id) x = x.copyWith(thing1: thing);
    if (x.thing2?.id == thing.id) x = x.copyWith(thing2: thing);
    if (x.thing3?.id == thing.id) x = x.copyWith(thing3: thing);
    if (x.thing4?.id == thing.id) x = x.copyWith(thing4: thing);
    if (x.thing5?.id == thing.id) x = x.copyWith(thing5: thing);
    x = x.copyWith(
      history: {
        for (final x in value.history)
          if (x.thing.id == thing.id) x.copyWith(thing: thing),
      },
    );
    value = x;
  }

  @override
  set value(AppModel x) {
    super.value = x;
    di.prefs.setString('app-view-model', x.toJson());
  }
}
