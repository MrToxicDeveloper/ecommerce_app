import 'package:api_calling/screen/detail/view/detail_view.dart';
import 'package:api_calling/screen/home/provider/home_provider.dart';
import 'package:api_calling/screen/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeView(),
          'detail': (context) => DetailView(),
        },
        // home: HomeView(),
      ),
    ),
  );
}















































































//Ayushman's code