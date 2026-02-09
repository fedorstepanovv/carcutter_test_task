import 'package:carcutter_test/features/employees/employee.dart';
import 'package:mocktail/mocktail.dart';

class MockLocalDataSource extends Mock implements LocalEmployeeDataSource {}

class MockRemoteDataSource extends Mock implements RemoteEmployeeDataSource {}

class MockEmployeeRepository extends Mock implements EmployeeRepository {}
