import 'package:makers_wallet/models/models.dart';

abstract class CrudService<T extends Entity> {

 const CrudService();
 Future<List<T>> getAll();
 Future<void> createOrUpdate(T entity);
 Future<void> delete(int id);

}

abstract class ReadOnlyService<T extends Entity> {
 const ReadOnlyService();

 Future<List<T>?> getAll();
 Future<T?> getbyId(int id);

}