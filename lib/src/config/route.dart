import 'package:flutter/material.dart';
import 'package:nitseditor_ecommerce/src/pages/mainPage.dart';
import 'package:nitseditor_ecommerce/src/pages/product_detail.dart';

class Routes{
  static Map<String,WidgetBuilder> getRoute(){
    return  <String, WidgetBuilder>{
          '/': (_) => MainPage(),
          // '/detail': (_) => ProductDetailPage()
        };
  }
}