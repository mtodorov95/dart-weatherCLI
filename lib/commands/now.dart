import 'package:weather/commands/command.dart';
import 'package:weather/model.dart';

class NowCmd extends WeatherCmd {
  final loadingMessage = 'looking for the current weather in';

  @override
  String get name => 'now';

  @override
  String get description => 'Prints weather for right now at the given city';

  @override
  Future<List<Weather>> getWeather(String city) async {
    return [(await WeatherCmd.weatherApi.getWeather(city))[0]];
  }
}
