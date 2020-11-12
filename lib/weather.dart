import 'package:args/command_runner.dart';
import 'package:weather/commands/now.dart';
import 'package:weather/commands/week.dart';

Future<void> weatherCLI(List<String> args) async {
  final runner = CommandRunner('weather', 'Dart Weather CLI');

  runner..addCommand(NowCmd())..addCommand(WeekCmd());
}
