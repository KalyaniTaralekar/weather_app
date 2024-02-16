class Weather {
  String? icon;
  String? cityName;
  double? temp;
  double? min;
  double? max;
  double? wind_direction;
  double? visibility;
  double? cloud_cover;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;
  String? description;

  Weather(
      {this.icon,
      this.cityName,
      this.temp,
      this.min,
      this.max,
      this.wind_direction,
      this.visibility,
      this.cloud_cover,
      this.wind,
      this.humidity,
      this.feels_like,
      this.description,
      this.pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    icon = json["weather"][0]["icon"] as String;
    cityName = json["name"];
    temp = json["main"]["temp"];
    min = json["main"]["temp_min"];
    max = json["main"]["temp_max"];
    wind_direction = json["wind"]["deg"];
    visibility = json["visibility"];
    cloud_cover = json["clouds"]["all"];
    wind = json["wind"]["speed"];
    pressure = json["main"]["pressure"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
    description = json["weather"][0]["main"] as String;
  }
}
