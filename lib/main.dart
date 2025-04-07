import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'View_Model/product_view_model.dart';
import 'View_UI/product_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductViewModel()..fetchProducts(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TP Flutter MVVM',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: ThemeMode.system,
        home: ProductListScreen(),
      ),
    );
  }
}
