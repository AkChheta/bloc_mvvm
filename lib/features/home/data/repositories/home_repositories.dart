import 'package:bloc_mvvm/core/api/network_api_services.dart';
import 'package:bloc_mvvm/core/helpers/constants/config.dart';
import 'package:bloc_mvvm/features/home/data/models/home_model.dart';

abstract class HomeRepositories {
  Future<List<UserDataModel>> getuserList();

  // Future<Either<Failure, List<StoreGroup>>> getStoreGroups(
  // String storeId, String categoryId);
}

class HomeRepositoriesImpl extends HomeRepositories {
  final NetworkApiServices apiService;
  HomeRepositoriesImpl(this.apiService);
  @override
  Future<List<UserDataModel>> getuserList() async {
    dynamic response = await apiService.getApi(AppUrl.userDataUrl);

    print("res:::::::::::::::${response['data']}");
    return (response['data'] as List)
        .map((e) => UserDataModel.fromJson(e))
        .toList();
  }

  //   @override
  // Future<Either<Failure, List<StoreGroup>>> getStoreGroups(
  //     String storeId, String categoryId) {
  //   return repoExecute(
  //       () => remoteDataSource.getStoreGroups(storeId, categoryId));
  // }
}
