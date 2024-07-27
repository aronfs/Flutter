import 'package:bloc/bloc.dart';
import 'package:clima_app_ec/data/my_data.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());
      try {
        WeatherFactory wf = WeatherFactory(API_KEY, language: Language.SPANISH);
       /* //this part we would take location in my device
        Position position = await Geolocator.getCurrentPosition();
        //This part we will have param the las position latitude and longitude*/

        Weather weather = await wf.currentWeatherByLocation(
            event.position.latitude, 
            event.position.longitude
            );
      
        emit(WeatherBlocSucces(weather: weather));
      } catch (e) {
        emit(WeatherBlocFailure());
      }
    });
  }
}
