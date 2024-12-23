import 'package:be_talent_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/utils/colors.dart';
import '../../core/utils/text_styles.dart';
import '../viewmodels/employee_view_model.dart';
import '../widgets/bell_notification.dart';
import '../widgets/circle_avatar.dart';
import '../widgets/expansion_tile.dart';
import '../widgets/header.dart';
import '../widgets/search_bar.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<EmployeeViewModel>().loadEmployees();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<EmployeeViewModel>();

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,
        leading: const CircleAvatarWidget(
          nomeCompleto: 'Rafaella Costa',
        ),
        actions: const [
          BellNotification(
            numberNotification: '5',
          ),
        ],
      ),
      body: SafeArea(
        child: viewModel.isLoading
            ? const Center(child: CircularProgressIndicator())
            : viewModel.errorMessage.isNotEmpty
                ? Center(child: Text(viewModel.errorMessage))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Text('Funcionários',
                            style: TextStyles.heading1Medium()),
                      ),
                      const SizedBox(height: Spacing.regular16),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Spacing.regular20),
                        child: SearchBarWidget(
                          hintText: 'Pesquisar',
                          onChanged: viewModel.filterEmployees,
                        ),
                      ),
                      const SizedBox(height: Spacing.regular16),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Spacing.regular20),
                        child: Header(),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: viewModel.filteredEmployees.length,
                          itemBuilder: (context, index) {
                            final employee = viewModel.filteredEmployees[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: Spacing.regular20),
                              child: EmployeeTile(
                                name: employee.name,
                                job: employee.job,
                                admissionDate:
                                    employee.admissionDate.toString(),
                                phone: employee.phone,
                                imageUrl: employee.image,
                              ),
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
