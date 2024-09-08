import 'package:blogpost/presentation/index.dart';
import 'package:flutter/material.dart';
import 'package:blogpost/domain/model/index.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    final isMobile = MediaQuery.of(context).size.width < 650;

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(isMobile ? 8.0 : 16.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(isMobile ? 8.0 : 16.0),
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
                      padding: EdgeInsets.all(isMobile ? 8.0 : 16.0),
                      child: SizedBox(
                        width: isMobile ? 150.w : 200.w,
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  headingRowColor: WidgetStateColor.resolveWith(
                    (states) => Colors.grey.shade200,
                  ),
                  dataRowColor: WidgetStateColor.resolveWith(
                    (states) => Colors.white,
                  ),
                  dividerThickness: 0.5,
                  columnSpacing: isMobile ? 8 : 16,
                  horizontalMargin: isMobile ? 8 : 12,
                  headingTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  dataTextStyle: const TextStyle(
                    color: Colors.black87,
                  ),
                  columns: [
                    if (!isMobile) const DataColumn(label: Text('ID')),
                    const DataColumn(label: Text('Name')),
                    const DataColumn(label: Text('Username')),
                    const DataColumn(label: Text('Email')),
                    if (!isMobile) const DataColumn(label: Text('Phone')),
                    if (!isMobile) const DataColumn(label: Text('Website')),
                    const DataColumn(label: Text('Company Name')),
                  ],
                  rows: _filteredUsers.map((user) {
                    return DataRow(cells: [
                      if (!isMobile)
                        DataCell(SelectableText(user.id.toString())),
                      DataCell(SelectableText(user.name)),
                      DataCell(SelectableText(user.username)),
                      DataCell(SelectableText(user.email)),
                      if (!isMobile) DataCell(SelectableText(user.phone)),
                      if (!isMobile) DataCell(SelectableText(user.website)),
                      DataCell(SelectableText(user.company.name)), //
                    ]);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
