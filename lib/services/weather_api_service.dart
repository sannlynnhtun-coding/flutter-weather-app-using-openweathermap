import 'package:flutter_weather_app_using_openweathermap/constant/ApiConstant.dart';
import 'package:flutter_weather_app_using_openweathermap/models/city_response_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../models/current_weather_response_model.dart';

part 'weather_api_service.g.dart';

@RestApi(baseUrl: ApiConstant.BaseUrl)
abstract class WeatherApiService {
  factory WeatherApiService(Dio dio) => _WeatherApiService(dio);

  @GET(
      '${ApiConstant.SearchCity}?limit=10&appid=${ApiConstant
          .OpenWeatherApiKey}}')
  Future<List<CityResponseModel>> searchCity({
    @Query('q') required String city,
  });

  @GET(
      '${ApiConstant.CurrentWeather}?units=metric&appid=${ApiConstant
          .OpenWeatherApiKey}}')
  Future<CurrentWeatherResponseModel> getCurrentWeather({
    @Query('lat') required double lat, @Query('lat') required double lon
  });
}
