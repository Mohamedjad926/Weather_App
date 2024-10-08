import 'package:ana_zah2t/cubits/get_Weather_cubit/getWeatherStates.dart';
import 'package:ana_zah2t/cubits/get_Weather_cubit/get_weather_cubit.dart';
import 'package:ana_zah2t/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                // brightness: Brightness.dark,
                primarySwatch: getWeatherColor(
                    BlocProvider.of<GetWeatherCubit>(context)
                        .weatherModel
                        ?.weatherCondition),
              ),
              home: const MyWidget(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getWeatherColor(String? condition) 
{
  if (condition == null) {
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Clear':
      return Colors.orange;
    case 'Partly cloudy':
      return Colors.yellow;
    case 'Cloudy':
      return Colors.grey;
    case 'Overcast':
      return Colors.grey;
    case 'Mist':
      return Colors.grey;
    case 'Patchy rain possible':
      return Colors.lightBlue;
    case 'Patchy snow possible':
      return Colors.blue;
    case 'Patchy sleet possible':
      return Colors.blue;
    case 'Patchy freezing drizzle possible':
      return Colors.blue;
    case 'Thundery outbreaks possible':
      return Colors.deepPurple;
    case 'Blowing snow':
      return Colors.lightBlue;
    case 'Blizzard':
      return Colors.lightBlue;
    case 'Fog':
      return Colors.grey;
    case 'Freezing fog':
      return Colors.grey;
    case 'Patchy light drizzle':
      return Colors.lightBlue;
    case 'Light drizzle':
      return Colors.lightBlue;
    case 'Freezing drizzle':
      return Colors.blue;
    case 'Heavy freezing drizzle':
      return Colors.blue;
    case 'Patchy light rain':
      return Colors.lightBlue;
    case 'Light rain':
      return Colors.lightBlue;
    case 'Moderate rain at times':
      return Colors.lightBlue;
    case 'Moderate rain':
      return Colors.lightBlue;
    case 'Heavy rain at times':
      return Colors.lightBlue;
    case 'Heavy rain':
      return Colors.lightBlue;
    case 'Light freezing rain':
      return Colors.blue;
    case 'Moderate or heavy freezing rain':
      return Colors.blue;
    case 'Light sleet':
      return Colors.blue;
    case 'Moderate or heavy sleet':
      return Colors.blue;
    case 'Patchy light snow':
      return Colors.blue;
    case 'Light snow':
      return Colors.blue;
    case 'Patchy moderate snow':
      return Colors.blue;
    case 'Moderate snow':
      return Colors.blue;
    case 'Patchy heavy snow':
      return Colors.blue;
    case 'Heavy snow':
      return Colors.blue;
    case 'Ice pellets':
      return Colors.blue;
    case 'Light rain shower':
      return Colors.lightBlue;
    case 'Moderate or heavy rain shower':
      return Colors.lightBlue;
    case 'Torrential rain shower':
      return Colors.lightBlue;
    case 'Light sleet showers':
      return Colors.blue;
    case 'Moderate or heavy sleet showers':
      return Colors.blue;
    case 'Light snow showers':
      return Colors.blue;
    case 'Moderate or heavy snow showers':
      return Colors.blue;
    case 'Light showers of ice pellets':
      return Colors.blue;
    case 'Moderate or heavy showers of ice pellets':
      return Colors.blue;
    case 'Patchy light rain with thunder':
      return Colors.deepPurple;
    case 'Moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'Patchy light snow with thunder':
      return Colors.deepPurple;
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple;
    default:
      return Colors.blue;
  }
}
