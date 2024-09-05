import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    required final int id,
    required final String name,
    required final String username,
    required final String email,
    required final AddressModel address,
    required final String phone,
    required final String website,
    required final CompanyModel company,
  }) = _UserModel;

  factory UserModel.initial() => UserModel(
        id: 0,
        name: '',
        username: '',
        email: '',
        address: AddressModel.initial(),
        phone: '',
        website: '',
        company: CompanyModel.intial(),
      );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel {
  factory AddressModel({
    required final String street,
    required final String suite,
    required final String city,
    required final String zipcode,
    required final GeoLocatorModel geo,
  }) = _AddressModel;
  factory AddressModel.initial() => AddressModel(
        street: '',
        suite: '',
        city: '',
        zipcode: '',
        geo: GeoLocatorModel.initial(),
      );
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

@freezed
class GeoLocatorModel with _$GeoLocatorModel {
  factory GeoLocatorModel({
    required final String lat,
    required final String lng,
  }) = _GeoLocatorModel;

  factory GeoLocatorModel.initial() => GeoLocatorModel(
        lat: '',
        lng: '',
      );

  factory GeoLocatorModel.fromJson(Map<String, dynamic> json) =>
      _$GeoLocatorModelFromJson(json);
}

@freezed
class CompanyModel with _$CompanyModel {
  factory CompanyModel({
    required final String name,
    required final String catchPhrase,
    required final String bs,
  }) = _CompanyModel;

  factory CompanyModel.intial() => CompanyModel(
        name: '',
        catchPhrase: '',
        bs: '',
      );

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
