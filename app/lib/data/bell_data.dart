import 'package:app/models/bell_model.dart';

class BellData {
  final data = const <BellModel>{
    BellModel(data: [
      Bell(
        tabname: "Classes",
        timeData: [
          Time(
              time: "12:30 am",
              label: "period 1",
              musicFileName: "file",
              switchState: true,
              days: [
                Day(day: "Sun", active: true),
                Day(day: "mon", active: true),
                Day(day: "Tue", active: true),
                Day(day: "Wed", active: true),
                Day(day: "Thu", active: true),
                Day(day: "Fri", active: true),
                Day(day: "Sat", active: true),
              ])
        ],
      ),
      Bell(
        tabname: "Classes",
        timeData: [
          Time(
              time: "12:30 am",
              label: "period 1",
              musicFileName: "file",
              switchState: true,
              days: [
                Day(day: "Sun", active: true),
                Day(day: "mon", active: true),
                Day(day: "Tue", active: true),
                Day(day: "Wed", active: true),
                Day(day: "Thu", active: true),
                Day(day: "Fri", active: true),
                Day(day: "Sat", active: true),
              ])
        ],
      ),
    ]),
  };
}
