import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/blocs/data_plan_form/data_plan_form_bloc.dart';
import 'package:ewallet_apps/models/data_plan_form_model.dart';
import 'package:ewallet_apps/models/data_plan_model.dart';
import 'package:ewallet_apps/models/operator_card_model.dart';
import 'package:ewallet_apps/shared/helpers.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/widgets/buttons.dart';
import 'package:ewallet_apps/ui/widgets/forms.dart';
import 'package:ewallet_apps/ui/widgets/package_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataPackagePage extends StatefulWidget {
  final OperatorCardModel operator;

  const DataPackagePage({
    Key? key,
    required this.operator,
  }) : super(key: key);

  @override
  State<DataPackagePage> createState() => _DataPackagePageState();
}

class _DataPackagePageState extends State<DataPackagePage> {
  final phoneController = TextEditingController(text: '');
  DataPlanModel? selectedDataPlan;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DataPlanFormBloc(),
      child: BlocConsumer<DataPlanFormBloc, DataPlanFormState>(
        listener: (context, state) {
          if (state is DataPlanFormFailed) {
            showCustomSnackbar(context, state.e);
          }
          if (state is DataPlanFormSuccess) {
            context.read<AuthBloc>().add(
                  AuthUpdateBalance(
                    selectedDataPlan!.price! * -1,
                  ),
                );
            Navigator.pushNamedAndRemoveUntil(
                context, '/data-success', (route) => false);
          }
        },
        builder: (context, state) {
          if (state is DataPlanFormLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Paket Data',
              ),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Phone Number',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                CustomFormField(
                  title: '+628',
                  isShowTitle: false,
                  controller: phoneController,
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Select Package',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Wrap(
                  spacing: 17,
                  runSpacing: 17,
                  children: widget.operator.dataPlans!.map((dataPlan) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDataPlan = dataPlan;
                        });
                      },
                      child: PackageItem(
                        dataPlan: dataPlan,
                        isSelected: dataPlan.id == selectedDataPlan?.id,
                      ),
                    );
                  }).toList(),
                ),
                // const SizedBox(
                //   height: 85,
                // ),
                // const SizedBox(
                //   height: 57,
                // ),
              ],
            ),
            floatingActionButton: (selectedDataPlan != null &&
                    phoneController.text.isNotEmpty)
                ? Container(
                    margin: const EdgeInsets.all(24),
                    child: CustomFilledButton(
                      title: 'Continue',
                      onPressed: () async {
                        if (await Navigator.pushNamed(context, '/pin') ==
                            true) {
                          final authState = context.read<AuthBloc>().state;
                          String pin = '';
                          if (authState is AuthSuccess) {
                            pin = authState.data.pin!;
                          }

                          context.read<DataPlanFormBloc>().add(
                                DataPlanFormPost(
                                  DataPlanFormModel(
                                    dataPlanId: selectedDataPlan!.id.toString(),
                                    phoneNumber: phoneController.text,
                                    pin: pin,
                                  ),
                                ),
                              );
                        }
                      },
                    ),
                  )
                : Container(),
            // body: ListView(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 24,
            //   ),
            //   children: [
            //     const SizedBox(
            //       height: 30,
            //     ),
            //     Text(
            //       'Phone Number',
            //       style: blackTextStyle.copyWith(
            //         fontSize: 16,
            //         fontWeight: semiBold,
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 14,
            //     ),
            //     CustomFormField(
            //       title: '+628',
            //       isShowTitle: false,
            //       controller: phoneController,
            //     ),
            //     const SizedBox(
            //       height: 40,
            //     ),
            //     Text(
            //       'Select Package',
            //       style: blackTextStyle.copyWith(
            //         fontSize: 16,
            //         fontWeight: semiBold,
            //       ),
            //     ),
            //     const SizedBox(
            //       height: 14,
            //     ),
            //     Wrap(
            //       spacing: 17,
            //       runSpacing: 17,
            //       children: widget.operator.dataPlans!.map((dataPlan) {
            //         return GestureDetector(
            //           onTap: () {
            //             setState(() {
            //               selectedDataPlan = dataPlan;
            //             });
            //           },
            //           child: PackageItem(
            //             dataPlan: dataPlan,
            //             isSelected: dataPlan.id == selectedDataPlan?.id,
            //           ),
            //         );
            //       }).toList(),
            //     ),
            //     Wrap(
            //       spacing: 17,
            //       runSpacing: 17,
            //       children: [
            //         PackageItem(
            //           amount: 10,
            //           price: 100000,
            //         ),
            //         PackageItem(
            //           amount: 25,
            //           price: 200000,
            //           isSelected: true,
            //         ),
            //         PackageItem(
            //           amount: 40,
            //           price: 300000,
            //         ),
            //       ],
            //     ),
            //     const SizedBox(
            //       height: 85,
            //     ),
            //     if (selectedDataPlan != null && phoneController.text.isNotEmpty)
            //       CustomFilledButton(
            //         title: 'Continue',
            //         onPressed: () async {
            //           if (await Navigator.pushNamed(context, '/pin') == true) {
            //             final authState = context.read<AuthBloc>().state;
            //             String pin = '';
            //             if (authState is AuthSuccess) {
            //               pin = authState.data.pin!;
            //             }

            //             context.read<DataPlanFormBloc>().add(
            //                   DataPlanFormPost(
            //                     DataPlanFormModel(
            //                       dataPlanId: selectedDataPlan!.id.toString(),
            //                       phoneNumber: phoneController.text,
            //                       pin: pin,
            //                     ),
            //                   ),
            //                 );
            //           }
            //         },
            //       ),
            //     CustomFilledButton(
            //       title: 'Continue',
            //       onPressed: () async {
            //         if (await Navigator.pushNamed(context, '/pin') == true) {
            //           Navigator.pushNamedAndRemoveUntil(
            //               context, 'data-success', (route) => false);
            //         }
            //       },
            //     ),
            //     const SizedBox(
            //       height: 57,
            //     ),
            //   ],
            // ),
          );
        },
      ),
    );
  }
}
