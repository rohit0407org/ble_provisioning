import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/features/ble_screen/bloc/ble_bloc.dart';
import 'package:untitled2/features/ble_screen/view/ble_password.dart';
import 'package:untitled2/features/ble_screen/view/ble_view.dart';
import 'package:untitled2/features/ble_wifi_screen/bloc/ble_wifi_bloc.dart';
import 'package:untitled2/features/ble_wifi_screen/view/ble_wifi_view.dart';

import 'home_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => BleBloc()),
        BlocProvider(create: (BuildContext context) => BleWifiBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (_) => const HomeScreen(),
          '/ble': (_) => const BleView(),
          '/BlePasswordView': (_) => const BlePasswordView(),
          '/bleWifiScreen': (_) => const BleWifiView(),
        },
      ),
    );
  }
}