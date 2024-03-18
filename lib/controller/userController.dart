import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/model/user.dart';
import 'package:test_app/view/homeScreen.dart';

class UserController extends GetxController {
  final users = <UserModel>[].obs;
  final selectedUsers = <UserModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    users.addAll([
      UserModel(
          currencySymbol: "\$",
          date: "21-Aug-20",
          id: 1,
          maturityDate: "21-Aug-20",
          paidAmount: 0,
          remainingAmount: 0,
          supplier: "Nimra",
          totalAmount: 0,
          totalWeight: 0,
          weightPerItem: 0),
      UserModel(
          currencySymbol: "\$",
          date: "21-Aug-20",
          id: 2,
          maturityDate: "21-Aug-20",
          paidAmount: 0,
          remainingAmount: 0,
          supplier: "Ansa",
          totalAmount: 0,
          totalWeight: 0,
          weightPerItem: 0),
      UserModel(
          currencySymbol: "\$",
          date: "21-Aug-20",
          id: 3,
          maturityDate: "21-Aug-20",
          paidAmount: 0,
          remainingAmount: 0,
          supplier: "Bilal",
          totalAmount: 0,
          totalWeight: 0,
          weightPerItem: 0),
      UserModel(
          currencySymbol: "\$",
          date: "21-Aug-20",
          id: 4,
          maturityDate: "21-Aug-20",
          paidAmount: 0,
          remainingAmount: 0,
          supplier: "Rehan",
          totalAmount: 0,
          totalWeight: 0,
          weightPerItem: 0)
    ]);
  }

void displaySelectedUsers(UserModel user) {
  print('Selected User: ${user.supplier}');
  if (!selectedUsers.contains(user)) {
    selectedUsers.add(user);
    print('Added to selectedUsers: $selectedUsers');
  } else {
    selectedUsers.remove(user);
    print('Removed from selectedUsers: $selectedUsers');
  }
}

  void navigateToSelectedUsersScreen(BuildContext context) {
    Get.to(HomeScreen(selectedUsers: selectedUsers.toList()));
  }
}
