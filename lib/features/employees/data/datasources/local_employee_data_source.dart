import 'package:carcutter_test/core/database/app_database.dart';
import 'package:carcutter_test/features/employees/data/models/employee_model.dart';
import 'package:sembast/sembast_io.dart';

abstract class LocalEmployeeDataSource {
  Stream<List<EmployeeModel>> getEmployeesStream();
  Future<void> cacheEmployees(List<EmployeeModel> employees);
  Future<EmployeeModel?> getEmployee(int id);
  Future<void> addEmployee(EmployeeModel employee);
  Future<void> deleteEmployee(int id);
  Future<void> replaceEmployee(int oldId, EmployeeModel newEmployee);
}

class LocalEmployeeDataSourceImpl implements LocalEmployeeDataSource {
  LocalEmployeeDataSourceImpl(this._appDatabase);

  final AppDatabase _appDatabase;
  final _store = intMapStoreFactory.store('employees');

  Future<Database> get _db async => await _appDatabase.database;

  @override
  Stream<List<EmployeeModel>> getEmployeesStream() async* {
    final db = await _db;
    final query = _store.query(finder: Finder(sortOrders: [SortOrder('id')]));
    yield* query.onSnapshots(db).map((snapshots) {
      return snapshots.map((snapshot) {
        return EmployeeModel.fromJson(snapshot.value);
      }).toList();
    });
  }

  @override
  Future<void> cacheEmployees(List<EmployeeModel> employees) async {
    final db = await _db;
    await db.transaction((txn) async {
      for (var employee in employees) {
        await _store.record(employee.id).put(txn, employee.toJson());
      }
    });
  }

  @override
  Future<void> deleteEmployee(int id) async {
    final db = await _db;
    await _store.record(id).delete(db);
  }

  @override
  Future<void> replaceEmployee(int oldId, EmployeeModel newEmployee) async {
    final db = await _db;
    await db.transaction((txn) async {
      await _store.record(oldId).delete(txn);
      await _store.record(newEmployee.id).put(txn, newEmployee.toJson());
    });
  }

  @override
  Future<void> addEmployee(EmployeeModel employee) async {
    final db = await _db;
    await _store.record(employee.id).put(db, employee.toJson());
  }

  @override
  Future<EmployeeModel?> getEmployee(int id) async {
    final db = await _db;
    final snapshot = await _store.record(id).getSnapshot(db);
    if (snapshot != null) {
      return EmployeeModel.fromJson(snapshot.value);
    }
    return null;
  }
}
