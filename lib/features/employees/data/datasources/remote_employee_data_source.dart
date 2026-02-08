import 'package:carcutter_test/core/network/api_client.dart';
import 'package:carcutter_test/features/employees/data/models/employee_model.dart';

abstract class RemoteEmployeeDataSource {
  Future<List<EmployeeModel>> getEmployees();
  Future<EmployeeModel> createEmployee(Map<String, dynamic> data);
  Future<void> deleteEmployee(int id);
}

class RemoteEmployeeDataSourceImpl implements RemoteEmployeeDataSource {
  final ApiClient _client;

  RemoteEmployeeDataSourceImpl(this._client);

  @override
  Future<List<EmployeeModel>> getEmployees() async {
    final response = await _client.get<Map<String, dynamic>>('/employees');
    final List<dynamic> data = response['data'];
    return data.map((json) => EmployeeModel.fromJson(json)).toList();
  }

  @override
  Future<EmployeeModel> createEmployee(Map<String, dynamic> data) async {
    final response = await _client.post<Map<String, dynamic>>(
      '/create',
      data: data,
    );
    return EmployeeModel.fromJson(response);
  }

  @override
  Future<void> deleteEmployee(int id) async {
    await _client.delete('/delete/$id');
  }
}
