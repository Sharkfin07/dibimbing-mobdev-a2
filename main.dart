import './libs/user.dart';
import './libs/utils.dart';
import 'dart:convert';
import 'dart:io';

void main() async {
  // * Fetch data (simulasi fetch API)
  final jsonData = await File('./public/user_data.json').readAsString();
  final userData = jsonDecode(jsonData);

  // * Inisialisasi data
  // Inisialisasi data customer
  List<Customer> customers = [];
  for (Map<String, dynamic> c in userData['userCustomerData'])
    customers.add(Customer.toJson(c));

  // Inisialisasi data admin
  List<Admin> admins = [];
  for (Map<String, dynamic> a in userData['userAdminData'])
    admins.add(Admin.toJson(a));

  // Data gabungan users
  final List users = [...customers, ...admins];

  print(admins[0].email);

  for (User user in users) {
    user.showData();
  }
}
