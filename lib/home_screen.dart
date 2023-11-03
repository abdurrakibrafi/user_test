import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:user_test/model/weather_model.dart';

class HomeScreen extends StatelessWidget {
  final List<WeatherData> weatherData = [
    WeatherData(
      city: "New York",
      temperature: 20,
      condition: "Clear",
      humidity: 60,
      windSpeed: 5.5,
    ),
    WeatherData(
      city: "Los Angeles",
      temperature: 25,
      condition: "Sunny",
      humidity: 50,
      windSpeed: 6.8,
    ),
    WeatherData(
      city: "London",
      temperature: 15,
      condition: "Partly Cloudy",
      humidity: 70,
      windSpeed: 4.2,
    ),
    WeatherData(
      city: "Tokyo",
      temperature: 28,
      condition: "Rainy",
      humidity: 75,
      windSpeed: 8.0,
    ),
    WeatherData(
      city: "Sydney",
      temperature: 22,
      condition: "Cloudy",
      humidity: 55,
      windSpeed: 7.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Info'),
      ),
      body: ListView.builder(
        itemCount: weatherData.length,
        itemBuilder: (BuildContext context, int index) {
          final data = weatherData[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('City: ${data.city}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('Temperature: ${data.temperature}°C'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('Condition: ${data.condition}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('Humidity: ${data.humidity}%'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('Wind Speed: ${data.windSpeed} m/s'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
