import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test7/cubits/get_current_weather_cubit/get_current_weather_cubit.dart';
import 'package:test7/main.dart';
import 'package:test7/widgets/custom_text_field.dart';


class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            BlocProvider.of<GetCurrentWeatherCubit>(
                  context,
                ).weatherModel?.weatherCondition ==
                null
            ? Colors.blue[900]
            : getWeatherColor(
                BlocProvider.of<GetCurrentWeatherCubit>(
                  context,
                ).weatherModel?.weatherCondition,
              ),

        elevation: 0,
        // surfaceTintColor: Colors.transparent,
        title: Text(
          'Search on a city',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),

        foregroundColor:
            BlocProvider.of<GetCurrentWeatherCubit>(
                  context,
                ).weatherModel?.weatherCondition ==
                null
            ? Colors.white
            : Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:
                BlocProvider.of<GetCurrentWeatherCubit>(
                      context,
                    ).weatherModel?.weatherCondition ==
                    null
                ? [Colors.blue[900]!, Colors.blue, Colors.blue[50]!]
                : [
                    getWeatherColor(
                      BlocProvider.of<GetCurrentWeatherCubit>(
                        context,
                      ).weatherModel?.weatherCondition,
                    ),
                    getWeatherColor(
                      BlocProvider.of<GetCurrentWeatherCubit>(
                        context,
                      ).weatherModel?.weatherCondition,
                    )[300]!,
                    getWeatherColor(
                      BlocProvider.of<GetCurrentWeatherCubit>(
                        context,
                      ).weatherModel?.weatherCondition,
                    )[50]!,
                  ],
            begin: .topCenter,
            end: AlignmentGeometry.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: CustomTextField(),
            ),
          ],
        ),
      ),
    );
  }
}
