import 'package:flutter/material.dart';
import 'package:test_app/model/user.dart';

class HomeScreen extends StatelessWidget {
  final List<UserModel> selectedUsers;
  const HomeScreen({super.key, required this.selectedUsers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: selectedUsers.length,
          itemBuilder: (context, index) {
            UserModel user = selectedUsers[index];
            return ListTile(
              title: Text(user.supplier),
              subtitle: Text(user.maturityDate),
              // Add more user data as needed
            );
          },
        ),
      ),
    );
  }
}
