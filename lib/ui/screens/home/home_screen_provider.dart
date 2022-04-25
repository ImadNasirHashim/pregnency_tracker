




import 'package:flutter/cupertino.dart';

class HomeScreenProvider extends ChangeNotifier{

  int pageIndex =0;


  void onItemTapped(int index) {

    pageIndex = index;

    notifyListeners();

  }




}