import 'package:meta/meta.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entity.dart';

class LocationModel extends LocationEntity {
  LocationModel({@required name, @required url}) : super(name: name, url: url);

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
        name: json['name'],
        url: json['url']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url
    };
  }
}