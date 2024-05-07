import 'package:app/models/bell_model.dart';
import 'package:app/models/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BellController extends GetxController {
  Rx<List<BellModel>> bellData = Rx<List<BellModel>>([]);

  Rx<List<EmployeeModel>> empData = Rx<List<EmployeeModel>>([]);

  TextEditingController nameTEC = TextEditingController();
  TextEditingController addressTEC = TextEditingController();

  late EmployeeModel employeeModel;
  var itemCount = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    nameTEC.dispose();
    addressTEC.dispose();
  }

  addBell() {}

  addEmployee(String name, String address) {
    employeeModel = EmployeeModel(name: name, address: address);
    empData.value.add(employeeModel);
    itemCount.value = empData.value.length;
    nameTEC.clear();
    addressTEC.clear();
  }

  removeEmployee(int index) {
    empData.value.removeAt(index);
    itemCount.value = empData.value.length;
  }
}
