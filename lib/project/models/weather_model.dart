class WeatherModel {
  final String country;
  final String city;
  final double temperature;

  const WeatherModel({
    required this.country,
    required this.city,
    required this.temperature,
  });
}

const List<WeatherModel> weatherList = [
  WeatherModel(country: 'Saudi Arabia', city: 'Riyadh', temperature: 19),
  WeatherModel(country: 'Russia', city: 'Moscow', temperature: -5),
  WeatherModel(country: 'Saudi Arabia', city: 'Dammam', temperature: 22),
  WeatherModel(country: 'USA', city: 'New York', temperature: 9),
  WeatherModel(country: 'Saudi Arabia', city: 'Jeddah', temperature: 28),
  WeatherModel(country: 'Japan', city: 'Tokyo', temperature: 12),
  WeatherModel(country: 'Saudi Arabia', city: 'Jubail', temperature: 21),
  WeatherModel(country: 'UK', city: 'London', temperature: 9),
  WeatherModel(country: 'Saudi Arabia', city: 'Hofuf', temperature: 20),
];
