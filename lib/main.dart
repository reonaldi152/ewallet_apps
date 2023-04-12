import 'dart:io';

import 'package:ewallet_apps/blocs/auth/auth_bloc.dart';
import 'package:ewallet_apps/shared/theme.dart';
import 'package:ewallet_apps/ui/pages/data_package_page.dart';
import 'package:ewallet_apps/ui/pages/data_provider_page.dart';
import 'package:ewallet_apps/ui/pages/data_success_page.dart';
import 'package:ewallet_apps/ui/pages/home_page.dart';
import 'package:ewallet_apps/ui/pages/onboarding_page.dart';
import 'package:ewallet_apps/ui/pages/pin_page.dart';
import 'package:ewallet_apps/ui/pages/profile_edit_success_page.dart';
import 'package:ewallet_apps/ui/pages/profile_page.dart';
import 'package:ewallet_apps/ui/pages/sign_in_page.dart';
import 'package:ewallet_apps/ui/pages/sign_up_page.dart';
import 'package:ewallet_apps/ui/pages/sign_up_success_page.dart';
import 'package:ewallet_apps/ui/pages/splash_page.dart';
import 'package:ewallet_apps/ui/pages/top_up_page.dart';
import 'package:ewallet_apps/ui/pages/topup_success.dart';
import 'package:ewallet_apps/ui/pages/transfer_amount_page.dart';
import 'package:ewallet_apps/ui/pages/transfer_page.dart';
import 'package:ewallet_apps/ui/pages/transfer_success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet_apps/blocs/currency_base/currency_base_bloc.dart';
import 'package:ewallet_apps/blocs/currency_base/currency_base_bloc.dart';
import 'package:ewallet_apps/blocs/currency_converter/currency_converter_bloc.dart';
import 'package:ewallet_apps/blocs/currency_rate/bloc.dart';
import 'package:ewallet_apps/blocs/delegate.dart';
import 'package:ewallet_apps/repository/repository.dart';
import 'blocs/user/user_bloc.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc()..add(AuthGetCurrent()),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider<CurrencyRateBloc>(
          create: (_) => CurrencyRateBloc(Repository()),
        ),
        BlocProvider<CurrencyConverterBloc>(
          create: (_) => CurrencyConverterBloc(Repository()),
        ),
        BlocProvider<CurrencyBaseBloc>(
          create: (_) => CurrencyBaseBloc(Repository()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: blackColor,
            ),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
        routes: {
          '/': (context) => const SplashPage(),
          '/onboarding': (context) => const OnboardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/pin': (context) => const PinPage(),
          '/profile-edit-success': (context) => const ProfileEditSuccessPage(),
          // '/profile-edit-pin': (context) => const ProfileEditPinPage(),
          '/topup': (context) => const TopupPage(),
          '/topup-success': (context) => const TopupSuccessPage(),
          '/transfer': (context) => const TransferPage(),
          '/transfer-success': (context) => const TransferSuccessPage(),
          '/data-provider': (context) => const DataProviderPage(),
          '/data-success': (context) => const DataSuccessPage(),
        },
      ),
    );
  }
}
