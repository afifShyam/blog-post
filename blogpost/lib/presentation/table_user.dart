import 'package:blogpost/presentation/index.dart';
import 'package:flutter/material.dart';
import 'package:blogpost/domain/model/index.dart';

class UserTablePage extends StatefulWidget {
  final List<UserModel> users;

  const UserTablePage({super.key, required this.users});

  @override
  State<UserTablePage> createState() => _UserTablePageState();
}

class _UserTablePageState extends State<UserTablePage> {
  late List<UserModel> _filteredUsers;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredUsers = widget.users;
    _searchController.addListener(_filterUsers);
  }

  void _filterUsers() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredUsers = widget.users.where((user) {
        return user.name.toLowerCase().contains(query) ||
            user.username.toLowerCase().contains(query) ||
            user.email.toLowerCase().contains(query) ||
            user.phone.toLowerCase().contains(query) ||
            user.website.toLowerCase().contains(query) ||
            user.company.name.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Text(
                    'User List',
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          labelText: 'Search',
                          prefixIcon: const Icon(Icons.search,
                              color: Colors.deepPurple),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide:
                                const BorderSide(color: Colors.deepPurple),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide:
                                const BorderSide(color: Colors.deepPurple),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DataTable(
              headingRowColor: WidgetStateColor.resolveWith(
                (states) => Colors.grey.shade200,
              ),
              dataRowColor: WidgetStateColor.resolveWith(
                (states) => Colors.white,
              ),
              dividerThickness: 0.5,
              columnSpacing: 16,
              horizontalMargin: 12,
              headingTextStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              dataTextStyle: const TextStyle(
                color: Colors.black87,
              ),
              columns: const [
                DataColumn(label: Text('ID')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Username')),
                DataColumn(label: Text('Email')),
                DataColumn(label: Text('Phone')),
                DataColumn(label: Text('Website')),
                DataColumn(label: Text('Company Name')),
              ],
              rows: _filteredUsers.map((user) {
                return DataRow(cells: [
                  DataCell(Text(user.id.toString())),
                  DataCell(Text(user.name)),
                  DataCell(Text(user.username)),
                  DataCell(Text(user.email)),
                  DataCell(Text(user.phone)),
                  DataCell(Text(user.website)),
                  DataCell(Text(user.company.name)),
                ]);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
