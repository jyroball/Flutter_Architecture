import 'package:get_it/get_it.dart';
import 'bloc_registry.dart';
import 'repository_registry.dart';
import 'service_registry.dart';
import 'usecase_registry.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
   //! ----- services -----
  final ServiceRegistry servicesRegistry = ServiceRegistry();
  servicesRegistry.registerServices();

  //! ----- repositories -----
  final RepositoryRegistry repositoryRegistry = RepositoryRegistry();
  repositoryRegistry.registerRepositories();

  //! ----- use cases -----
  final UseCaseRegistry useCaseRegistry = UseCaseRegistry();
  useCaseRegistry.registerUseCases();

  //! ----- blocs -----
  final BlocRegistry blocRegistry = BlocRegistry();
  blocRegistry.registerBlocs();
}
