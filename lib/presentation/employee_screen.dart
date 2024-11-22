import 'package:be_talent_app/core/utils/colors.dart';
import 'package:be_talent_app/data/models/employee_model.dart';
import 'package:flutter/material.dart';

import '../core/utils/text_styles.dart';
import 'widgets/expansion_tile.dart';
import 'widgets/header.dart';
import 'widgets/search_bar.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  final List<Employee> employees = [
    Employee(
      id: '1',
      name: "João",
      job: "Back-end",
      admissionDate: DateTime.parse("2019-12-02T00:00:00.000Z"),
      phone: "5551234567890",
      image:
          "https://img.favpng.com/25/7/23/computer-icons-user-profile-avatar-image-png-favpng-LFqDyLRhe3PBXM0sx2LufsGFU.jpg",
    ),
    Employee(
      id: '2',
      name: "Roberto",
      job: "Front-end",
      admissionDate: DateTime.parse("2020-03-12T00:00:00.000Z"),
      phone: "5550321654789",
      image: "(link unavailable)",
    ),
    Employee(
      id: '3',
      name: "Maria",
      job: "Front-end",
      admissionDate: DateTime.parse("2020-03-15T00:00:00.000Z"),
      phone: "5557894561230",
      image: "(link unavailable)",
    ),
    Employee(
      id: '4',
      name: "Cleber",
      job: "Back-end",
      admissionDate: DateTime.parse("2020-06-01T00:00:00.000Z"),
      phone: "5557410258963",
      image: "(link unavailable)",
    ),
    Employee(
      id: '5',
      name: "Giovana",
      job: "Designer",
      admissionDate: DateTime.parse("2020-06-20T00:00:00.000Z"),
      phone: "5553698520147",
      image: "(link unavailable)",
    ),
    Employee(
      id: '6',
      name: "Mario",
      job: "Front-end",
      admissionDate: DateTime.parse("2020-10-01T00:00:00.000Z"),
      phone: "5551234567890",
      image: "(link unavailable)",
    ),
    Employee(
      id: '7',
      name: "Gabriel",
      job: "Back-end",
      admissionDate: DateTime.parse("2021-01-01T00:00:00.000Z"),
      phone: "5551234567890",
      image: "(link unavailable)",
    ),
    Employee(
      id: '8',
      name: "Carla",
      job: "Back-end",
      admissionDate: DateTime.parse("2021-03-01T00:00:00.000Z"),
      phone: "5551234567890",
      image: "(link unavailable)",
    ),
    Employee(
      id: '10',
      name: "Fernanda",
      job: "Front-end",
      admissionDate: DateTime.parse("2021-05-01T00:00:00.000Z"),
      phone: "5551234567890",
      image: "(link unavailable)",
    ),
  ];

  List<Employee> filteredEmployees = [];

  @override
  void initState() {
    super.initState();
    filteredEmployees = employees;
  }

  void filterEmployees(String query) {
    final filtered = employees.where((employee) {
      final nameLower = employee.name.toLowerCase();
      final jobLower = employee.job.toLowerCase();
      final phoneLower = employee.phone.toLowerCase();
      final searchLower = query.toLowerCase();

      return nameLower.contains(searchLower) ||
          jobLower.contains(searchLower) ||
          phoneLower.contains(searchLower);
    }).toList();

    setState(() {
      filteredEmployees = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: SizedBox(
            height: 45,
            width: 45,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications_none,
                    color: Colors.black,
                    size: 36,
                  ),
                  Positioned(
                    right: 0,
                    child: SizedBox(
                      height: 20,
                      width: 20,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: AppColors.blueprimary,
                        child: Text(
                          '02',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text('Funcionários', style: TextStyles.heading1Medium()),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SearchBarWidget(
                hintText: 'Pesquisar',
                onChanged: filterEmployees,
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Header(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredEmployees.length,
                itemBuilder: (context, index) {
                  final employee = filteredEmployees[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: EmployeeTile(
                        name: employee.name,
                        job: employee.job,
                        admissionDate: employee.admissionDate.toString(),
                        phone: employee.phone,
                        imageUrl: employee.image),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
