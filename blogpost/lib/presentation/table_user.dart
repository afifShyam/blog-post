// import 'package:blogpost/presentation/index.dart';
// import 'package:flutter/material.dart';
// import 'package:blogpost/domain/model/index.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class UserTablePage extends StatefulWidget {
//   final List<UserModel> users;

//   const UserTablePage({super.key, required this.users});

//   @override
//   State<UserTablePage> createState() => _UserTablePageState();
// }

// class _UserTablePageState extends State<UserTablePage> {
//   late List<UserModel> _filteredUsers;
//   final TextEditingController _searchController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _filteredUsers = widget.users;
//     _searchController.addListener(_filterUsers);
//   }

//   void _filterUsers() {
//     final query = _searchController.text.toLowerCase();
//     setState(() {
//       _filteredUsers = widget.users.where((user) {
//         return user.name.toLowerCase().contains(query) ||
//             user.username.toLowerCase().contains(query) ||
//             user.email.toLowerCase().contains(query) ||
//             user.phone.toLowerCase().contains(query) ||
//             user.website.toLowerCase().contains(query) ||
//             user.company.name.toLowerCase().contains(query);
//       }).toList();
//     });
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isMobile = MediaQuery.of(context).size.width < 650;

//     return Scaffold(
//       appBar: const CustomAppBar(),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Padding(
//           padding: EdgeInsets.all(isMobile ? 8.0 : 16.0),
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(isMobile ? 8.0 : 16.0),
//                 child: Row(
//                   children: [
//                     const Text(
//                       'User List',
//                       style: TextStyle(
//                         color: Colors.deepPurple,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 24,
//                       ),
//                     ),
//                     const Spacer(),
//                     Padding(
//                       padding: EdgeInsets.all(isMobile ? 8.0 : 16.0),
//                       child: SizedBox(
//                         width: isMobile ? 150.w : 200.w,
//                         child: TextField(
//                           controller: _searchController,
//                           decoration: InputDecoration(
//                             labelText: 'Search',
//                             prefixIcon: const Icon(Icons.search,
//                                 color: Colors.deepPurple),
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide:
//                                   const BorderSide(color: Colors.deepPurple),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(8.0),
//                               borderSide:
//                                   const BorderSide(color: Colors.deepPurple),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: DataTable(
//                   headingRowColor: WidgetStateColor.resolveWith(
//                     (states) => Colors.grey.shade200,
//                   ),
//                   dataRowColor: WidgetStateColor.resolveWith(
//                     (states) => Colors.white,
//                   ),
//                   dividerThickness: 0.5,
//                   columnSpacing: isMobile ? 8 : 16,
//                   horizontalMargin: isMobile ? 8 : 12,
//                   headingTextStyle: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   dataTextStyle: const TextStyle(
//                     color: Colors.black87,
//                   ),
//                   columns: [
//                     if (!isMobile) const DataColumn(label: Text('ID')),
//                     const DataColumn(label: Text('Name')),
//                     const DataColumn(label: Text('Username')),
//                     const DataColumn(label: Text('Email')),
//                     if (!isMobile) const DataColumn(label: Text('Phone')),
//                     if (!isMobile) const DataColumn(label: Text('Website')),
//                     const DataColumn(label: Text('Company Name')),
//                   ],
//                   rows: _filteredUsers.map((user) {
//                     return DataRow(cells: [
//                       if (!isMobile)
//                         DataCell(SelectableText(user.id.toString())),
//                       DataCell(SelectableText(user.name)),
//                       DataCell(SelectableText(user.username)),
//                       DataCell(SelectableText(user.email)),
//                       if (!isMobile) DataCell(SelectableText(user.phone)),
//                       if (!isMobile) DataCell(SelectableText(user.website)),
//                       DataCell(SelectableText(user.company.name)), //
//                     ]);
//                   }).toList(),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';

import 'package:blogpost/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../application/bloc/slider/slider_cubit.dart';

class UserTablePage extends StatefulWidget {
  const UserTablePage({super.key});

  @override
  State<UserTablePage> createState() => _UserTablePageState();
}

class _UserTablePageState extends State<UserTablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: BlocBuilder<SliderCubit, SliderState>(
        builder: (context, state) {
          return Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Custom Circular Slider',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: state.size,
                  width: state.size,
                  child: CustomCircularSlider(
                    size: state.size,
                    trackColor: Colors.grey.shade300,
                    progressBarColor: state.colors,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  '${(context.watch<SliderCubit>().state.value * 100).toStringAsFixed(1)}%',
                  style: TextStyle(fontSize: 18.sp),
                ),
                const SizedBox(height: 20),
                const Text('Choose a color:'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio<Color>(
                      value: Colors.amber,
                      groupValue: state.colors,
                      onChanged: (Color? value) {
                        context.read<SliderCubit>().changeColor(value!);
                      },
                    ),
                    const Text('Amber'),
                    SizedBox(width: 20.w),
                    Radio<Color>(
                      value: Colors.pink,
                      groupValue: state.colors,
                      onChanged: (Color? value) {
                        context.read<SliderCubit>().changeColor(value!);
                      },
                    ),
                    const Text('Pink'),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Choose a size:'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<SliderCubit>().changeSize(150.0);
                      },
                      child: const Text('Small'),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        context.read<SliderCubit>().changeSize(300.0);
                      },
                      child: const Text('Large'),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomCircularSlider extends StatelessWidget {
  final double trackWidth;
  final Color trackColor;
  final Color progressBarColor;
  final double knobRadius;
  final double size;

  const CustomCircularSlider({
    super.key,
    this.size = 200.0,
    this.trackWidth = 8.0,
    this.trackColor = Colors.grey,
    this.progressBarColor = Colors.blue,
    this.knobRadius = 12.0,
  });

  void _updateProgress(BuildContext context, Offset localPosition, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final angle =
        atan2(localPosition.dy - center.dy, localPosition.dx - center.dx);
    double newProgress = (angle + pi / 2) / (2 * pi);
    if (newProgress < 0) newProgress += 1;

    context.read<SliderCubit>().changeValue(newProgress);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double actualSize = min(constraints.maxWidth, constraints.maxHeight);

        return GestureDetector(
          onPanUpdate: (details) {
            _updateProgress(
                context, details.localPosition, Size(actualSize, actualSize));
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: trackColor,
                    width: trackWidth,
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.all(trackWidth / 2),
                  child: BlocBuilder<SliderCubit, SliderState>(
                    builder: (context, state) {
                      return CircularProgressIndicator(
                        value: state.value,
                        strokeWidth: trackWidth,
                        backgroundColor: trackColor,
                        valueColor: AlwaysStoppedAnimation(progressBarColor),
                      );
                    },
                  ),
                ),
              ),
              BlocBuilder<SliderCubit, SliderState>(
                builder: (context, state) {
                  return Transform.rotate(
                    angle: state.value * 2 * pi,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: knobRadius,
                        height: knobRadius,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
