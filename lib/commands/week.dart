import 'package:weather/commands/command.dart';
import 'package:weather/model.dart';

class WeekCmd extends WeatherCmd {
  final loadingMessage = 'Looking for weekly weather in';

  @override
  String get name => 'week';

  @override
  String get description => 'Prints the weekly weather at the given city';
  @override
  Future<List<Weather>> getWeather(String city) async {
    return await WeatherCmd.weatherApi.getWeather(city);
  }
}
