//PACKAGE
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SocialsAuthView extends StatelessWidget {
  const SocialsAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 75,
                width: 150,
              ),
              const Spacer(),
              SizedBox(
                height: screenHeight * 0.06,
                width: screenWidth * 0.90,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: Text(
                    'Sign up with Apple',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  icon: const Icon(
                    BoxIcons.bxl_apple,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: screenHeight * 0.06,
                width: screenWidth * 0.90,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: Text(
                    'Sign up with Google',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium!
                        .copyWith(color: Colors.black),
                  ),
                  icon: const Icon(
                    BoxIcons.bxl_google,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                ),
              ),
              const SizedBox(height: 50),
              Text('or',style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(height: 50),
              SizedBox(
                height: screenHeight * 0.06,
                width: screenWidth * 0.90,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.onSurfaceVariant),
                  child: Text(
                    'Sign up with E-mail',
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              Text(
                    'By registering, you agree to our Terms of Use. Learn how we collect, use and share your data.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Theme.of(context).colorScheme.secondaryContainer),
                  ),
                  const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
