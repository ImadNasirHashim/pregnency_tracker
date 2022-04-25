





import 'package:flutter/cupertino.dart';

class AuthenticationProvider extends ChangeNotifier
{

  int renderScreen =0;


  void renderScreenFun(int getRenderScreen)
  {
    renderScreen = getRenderScreen;
    notifyListeners();

  }



}