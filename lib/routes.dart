import 'package:get/get.dart';
import 'package:laundry/pages/dashboard/dashboard.dart';
import 'package:laundry/pages/detail_order.dart';
import 'package:laundry/pages/home.dart';
import 'package:laundry/pages/login.dart';

routes() => [
  GetPage(name: "/", page:()=> Home()),
  GetPage(name: "/login", page:()=> Login()),
   GetPage(name: "/dashboard", page:()=> Dashboard()),
   GetPage(name: "/detail_order", page:()=> DetailOrder()),

];