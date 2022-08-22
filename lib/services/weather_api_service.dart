
import 'package:flutter_weather_app_using_openweathermap/constant/ApiConstant.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
part 'weather_api_service.g.dart';
@RestApi(baseUrl: ApiConstant.BaseUrl)
abstract class WeatherApiService{
factory WeatherApiService(Dio dio)=> _WeatherApiService(dio);
}