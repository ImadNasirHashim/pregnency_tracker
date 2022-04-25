import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pregnany_tracker/ui/screens/authintications/auth/authentications.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenDelay();
  }


  splashScreenDelay() async {
    ///
    /// splash screen delay
    ///
    await Future.delayed(Duration(seconds: 4));
    
    
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AuthenticationScreen()));
    //  Get.offAll(() => LoginScreen());
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)));
    // if (_authService.appUser.appUserId != null && _authService.isLogin!) {
    //   if (_authService.appUser.isFirstLogin ?? false) {
    //     Get.offAll(
    //           () => WalkThroughScreen(),
    //     );
    //   } else {
    //     Get.offAll(() => Home());
    //     print('User id=> ${_authService.appUser.appUserId}');
    //     Future.delayed(Duration(seconds: 1));
    //     checkUserActivity();
    //     // Get.snackbar("Congrats", "message",snackStyle: SnackStyle.FLOATING,isDismissible: true);
    //   }
    // } else if (_authService.appUser == null && !_authService.isLogin!) {
    //   Get.offAll(() => LoginScreen());
    //   print("App user name ${_authService.appUser.userName}");
    //   print("isLogin ${_authService.isLogin}");
    // } else {
    //   Get.offAll(() => LoginScreen());
    //   print("User email ${_authService.appUser.userEmail}");
    //   print("isLogin ${_authService.isLogin}");
    // }
    
    
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [


          Stack(
            children: [
              Container(
                height:MediaQuery.of(context).size.height,
                color: Colors.white,

                child: Lottie.asset("assets/lotties/splash.json",
                    height: MediaQuery.of(context).size.height,
                  fit: BoxFit.cover
                ),
              ),

              const Center(child: Text("Pregnancy Tracker")),
            ],
          )






        ],
      ),
    );
  }
}
