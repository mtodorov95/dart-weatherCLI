class Weather {
  double temp;
  double minTemp;
  double maxTemp;
  String date;

  Weather({this.temp, this.date, this.maxTemp, this.minTemp});

  Weather.fromJsom(Map<String, dynamic> json)
      : temp = json['the_temp'],
        minTemp = json['min_temp'],
        maxTemp = json['max_temp'],
        date = json['applicable_date'];

  @override
  String toString() {
    return 'Date: $date, Temp: ${temp.toStringAsFixed(2)}C, Min Temp: ${minTemp.toStringAsFixed(2)}C, Max Temp: ${maxTemp.toStringAsFixed(2)}C\n';
  }
}
