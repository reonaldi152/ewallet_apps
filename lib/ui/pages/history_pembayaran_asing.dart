import 'package:ewallet_apps/blocs/bloc/internation_transaction_bloc.dart';
import 'package:ewallet_apps/ui/widgets/home_latest_transaction_item%20copy.dart';
import 'package:flutter/material.dart';
import 'package:ewallet_apps/blocs/bloc/transaction_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';
import '../widgets/home_latest_transaction_item.dart';

class HistoryPembayaranAsing extends StatelessWidget {
  const HistoryPembayaranAsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History Pembayaran Asing',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Transaksi terakhir',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(22),
                  margin: const EdgeInsets.only(
                    top: 14,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: whiteColor,
                  ),
                  child: BlocProvider(
                    create: (context) => InternationTransactionBloc()
                      ..add(InternationTransactionGet()),
                    child: BlocBuilder<InternationTransactionBloc,
                        InternationTransactionState>(
                      builder: (context, state) {
                        if (state is InternationTransactionSuccess) {
                          return Column(
                            children:
                                state.transactionsAsing.map((transaction) {
                              return HomeLatestTransactionItemAsing(
                                  transaction: transaction);
                            }).toList(),
                          );
                        }

                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
