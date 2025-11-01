import './libs/user.dart';
import './libs/utils.dart';
import 'dart:convert';
import 'dart:io';

Future<List> fetchUserData(String jsonDir) async {
  // * Fetch data (simulasi fetch API)
  final jsonData = await File('./public/user_data.json').readAsString();
  final userData = jsonDecode(jsonData);

  // * Inisialisasi data
  // Inisialisasi data customer
  List<Customer> userCustomerData = [];
  for (Map<String, dynamic> c in userData['userCustomerData'])
    userCustomerData.add(Customer.toJson(c));

  // Inisialisasi data admin
  List<Admin> userAdminData = [];
  for (Map<String, dynamic> a in userData['userAdminData'])
    userAdminData.add(Admin.toJson(a));

  return [userCustomerData, userAdminData];
}

void main() async {
  final [customers, admins] = await fetchUserData('./public/user_data.json');

  // Data gabungan users
  final List users = [...customers, ...admins];
}
