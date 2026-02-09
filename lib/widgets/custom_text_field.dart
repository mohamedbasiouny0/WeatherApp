
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:
          BlocProvider.of<GetCurrentWeatherCubit>(
                context,
              ).weatherModel?.weatherCondition ==
              null
          ? Colors.white
          : Colors.black,
      style: TextStyle(
        color:
            BlocProvider.of<GetCurrentWeatherCubit>(
                  context,
                ).weatherModel?.weatherCondition ==
                null
            ? Colors.white
            : Colors.black,
      ),
      onSubmitted: (cityName) {
        GetCurrentWeatherCubit getCurrentWeatherCubit =
            BlocProvider.of<GetCurrentWeatherCubit>(context);
        getCurrentWeatherCubit.getCurrentWeather(cityName: cityName);
        Navigator.pop(context);
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 24,
        ),
    
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(
            Icons.search,
            color:
                BlocProvider.of<GetCurrentWeatherCubit>(
                      context,
                    ).weatherModel?.weatherCondition ==
                    null
                ? Colors.white
                : Colors.black,
          ),
        ),
        labelText: 'Search',
        labelStyle: TextStyle(
          color:
              BlocProvider.of<GetCurrentWeatherCubit>(
                    context,
                  ).weatherModel?.weatherCondition ==
                  null
              ? Colors.white
              : Colors.black,
        ),
        hintText: 'Enter the city name',
        hintStyle: TextStyle(
          color:
              BlocProvider.of<GetCurrentWeatherCubit>(
                    context,
                  ).weatherModel?.weatherCondition ==
                  null
              ? Colors.white
              : Colors.black,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color:
                BlocProvider.of<GetCurrentWeatherCubit>(
                      context,
                    ).weatherModel?.weatherCondition ==
                    null
                ? Colors.white
                : Colors.black,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color:
                BlocProvider.of<GetCurrentWeatherCubit>(
                      context,
                    ).weatherModel?.weatherCondition ==
                    null
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
    );
  }
}
