// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _WeatherApiService implements WeatherApiService {
  _WeatherApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://api.openweathermap.org/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<CityResponseModel>> searchCity({required city}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'q': city};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<List<dynamic>>(_setStreamType<
        List<CityResponseModel>>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'geo/1.0/direct?limit=10&appid=08c755eaf5a065b2e723b2c2198c79e0}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) =>
            CityResponseModel.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<CurrentWeatherResponseModel> getCurrentWeather(
      {required lat, required lon}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lat': lat, r'lat': lon};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(_setStreamType<
        CurrentWeatherResponseModel>(Options(
            method: 'GET', headers: _headers, extra: _extra)
        .compose(_dio.options,
            'data/2.5/weather?units=metric&appid=08c755eaf5a065b2e723b2c2198c79e0}',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CurrentWeatherResponseModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
