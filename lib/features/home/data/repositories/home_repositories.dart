import 'package:bloc_mvvm/core/api/network_api_services.dart';
import 'package:bloc_mvvm/core/helpers/constants/config.dart';
import 'package:bloc_mvvm/features/home/data/models/home_model.dart';
import 'package:bloc_mvvm/features/home/data/models/user_details.dart';

abstract class HomeRepositories {
  Future<List<UserDataModel>> getuserList();
  Future<List<UserDetailsModel>> getUserDetails();

  // Future<Either<Failure, List<StoreGroup>>> getStoreGroups(
  // String storeId, String categoryId);
}

class HomeRepositoriesImpl extends HomeRepositories {
  HomeRepositoriesImpl();

  final NetworkApiServices apiService = NetworkApiServices();

  @override
  Future<List<UserDataModel>> getuserList() async {
    dynamic response = await apiService.getApi(AppUrl.userDataUrl);

    print("res:::::::::::::::${response['data']}");
    return (response['data'] as List)
        .map((e) => UserDataModel.fromJson(e))
        .toList();
  }

  @override
  Future<List<UserDetailsModel>> getUserDetails() async {
    dynamic response = await apiService
        .getApi('https://631c37911b470e0e12fcdd0b.mockapi.io/api/users');
    // .then((value) =>
    //     (value as List).map((e) => userDetailsModelFromJson(e)).toList());

    return (response as List).map((e) => UserDetailsModel.fromJson(e)).toList();
  }

  //   @override
  // Future<Either<Failure, List<StoreGroup>>> getStoreGroups(
  //     String storeId, String categoryId) {
  //   return repoExecute(
  //       () => remoteDataSource.getStoreGroups(storeId, categoryId));
  // }
}
