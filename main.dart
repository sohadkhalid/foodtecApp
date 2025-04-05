import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app_/blocs/auth_bloc.dart';
import 'package:food_app_/repositories/add_card_screen.dart';
import 'package:food_app_/screens/Add_to_cart_screen.dart';
import 'package:food_app_/screens/Order_detailes_screen.dart';
import 'package:food_app_/screens/cart_empty_screen.dart';
import 'package:food_app_/screens/cart_history_screen.dart';
import 'package:food_app_/screens/cart_menu2_screen.dart';
import 'package:food_app_/screens/cart_minue_screen.dart';
import 'package:food_app_/screens/chat_screen.dart';
import 'package:food_app_/screens/checkout_screen.dart';
import 'package:food_app_/screens/confirm_new_password_screen.dart';
import 'package:food_app_/screens/congratulations_screen.dart';
import 'package:food_app_/screens/favorites_screen.dart';
import 'package:food_app_/screens/filter_screen.dart';
import 'package:food_app_/screens/history_empty_screen.dart';
import 'package:food_app_/screens/home_pizza_screen.dart';
import 'package:food_app_/screens/home_screen.dart';
import 'package:food_app_/screens/location_service_screen.dart';
import 'package:food_app_/screens/login_screen.dart';
import 'package:food_app_/screens/notifications_screen.dart';
import 'package:food_app_/screens/onboarding_screen.dart';
import 'package:food_app_/screens/order_succsess_screen.dart';
import 'package:food_app_/screens/profile2_screen.dart';
import 'package:food_app_/screens/profile_screen.dart';
import 'package:food_app_/screens/remove_msg_screen.dart';
import 'package:food_app_/screens/reset_password_screen.dart';
import 'package:food_app_/screens/set_location.dart';
import 'package:food_app_/screens/signup_screen.dart';
import 'package:food_app_/screens/track_screen.dart';
import 'package:food_app_/screens/verify_code_screen.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(FoodtekApp());
}

class FoodtekApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Foodtek',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        initialRoute: '/HistEmpty',
        routes: {
          '/login': (context) => LoginScreen(),
          '/sign_up': (context) => SignUpScreen(),
          '/reset_password': (context) => ResetPasswordScreen(),
          '/verify_code': (context) => VerifyCodeScreen(),
          '/new_password': (context) => ConfirmNewPasswordScreen(),
          '/congratulations': (context) => CongratulationsScreen(),
          '/home': (context) => HomeScreen(),
          '/pizza': (context) => HomePizzaScreen(),
          '/fav': (context) => FavoritesScreen(),
          '/remove': (context) => RemoveMessageScreen(),
          '/Noti': (context) => NotificationsScreen(),
          '/cart': (context) => AddToCartScreen(),
          '/Filter': (context) => FilterScreen(),
          '/onboarding': (context) => OnboardingScreen(),
          '/map': (context) => SetLocationScreen(),
          '/check': (context) => CheckoutScreen(),
          '/Add': (context) => AddCardScreen(),
          '/order': (context) => OrderSuccessScreen(),
          '/track': (context) => OrderTrackingScreen(),
          '/Chat': (context) => ChatScreen(),
          '/orddet': (context) => OrderDetailsScreen(),
          '/Profile1': (context) => ProfileScreen(),
          '/Profile2': (context) => Profile2Screen(),
          '/cartM': (context) => CartMenuScreen(),
          '/cartM2': (context) => CartMenu2Screen(),
          '/cartHis': (context) => CartHistoryScreen(),
          '/cartEmpty': (context) => CartEmptyScreen(),
          '/HistEmpty': (context) => HistoryEmptyScreen(),
        },
      ),
    );
  }
}
