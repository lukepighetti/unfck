import 'package:dart_mappable/dart_mappable.dart';

part 'day_model.mapper.dart';

@MappableClass()
class DayModel with DayModelMappable {
  final int year;
  final int month;
  final int day;

  DayModel(this.year, this.month, this.day);

  DayModel.fromDateTime(DateTime x)
      : year = x.toLocal().year,
        month = x.toLocal().month,
        day = x.toLocal().day;

  factory DayModel.today() => DayModel.fromDateTime(DateTime.now());

  DateTime toDateTime() => DateTime(year, month, day);
}
