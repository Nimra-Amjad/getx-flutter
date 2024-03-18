import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app/controller/userController.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());
    return Scaffold(
      body: Column(
        children: [
          DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text(
                    '',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'ID',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Supplier',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
              DataColumn(
                label: Expanded(
                  child: Text(
                    'Maturity Date',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ],
            rows: userController.users.map((user) {
              return DataRow(
                cells: [
                  DataCell(
                    Obx(() => Checkbox(
                          value: user.isSelected.value,
                          onChanged: (newValue) {
                            user.isSelected.value = newValue ?? false;
                            userController.displaySelectedUsers(user);
                          },
                        )),
                  ),
                  DataCell(Text(user.id.toString())),
                  DataCell(Text(user.supplier)),
                  DataCell(Text(user.maturityDate)),
                ],
              );
            }).toList(),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              userController.navigateToSelectedUsersScreen(context);
            },
            child: Text('View Selected Users'),
          ),
        ],
      ),
    );
  }
}
