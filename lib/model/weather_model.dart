class WeatherData {
  WeatherData({
    required this.city,
    required this.temperature,
    required this.condition,
    required this.humidity,
    required this.windSpeed,
  });

  final String? city;
  final int? temperature;
  final String? condition;
  final int? humidity;
  final double? windSpeed;

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      city: json["city"],
      temperature: json["temperature"],
      condition: json["condition"],
      humidity: json["humidity"],
      windSpeed: json["windSpeed"],
    );
  }

  Map<String, dynamic> toJson() => {
        "city": city,
        "temperature": temperature,
        "condition": condition,
        "humidity": humidity,
        "windSpeed": windSpeed,
      };
}
