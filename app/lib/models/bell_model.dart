// class BellModel {
//   final List<Bell> data;

//   const BellModel({required this.data});
// }

class BellModel {
  final String tabname;
  final List<Time> timeData;

  const BellModel({required this.tabname, required this.timeData});
}

class Day {
  final String day;
  final bool active;

  const Day({required this.day, required this.active});
}

class Time {
  final String time;
  final String label;
  final String musicFileName;
  final bool switchState;
  final List<Day> days;

  const Time({
    required this.time,
    required this.label,
    required this.musicFileName,
    required this.switchState,
    required this.days,
  });
}
