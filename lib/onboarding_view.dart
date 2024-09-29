//PACKAGES
import 'package:flutter/material.dart';

//SCREENS
import 'socialsauth_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/subscription_icons.png',
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 0,
            bottom: screenHeight * 0.80,
            left: screenWidth * 0.25,
            right: screenWidth * 0.25,
            child: SizedBox(
                height: 100,
                width: 200,
                child: Center(child: Image.asset('assets/images/logo.png'))),
          ),
          Positioned(
            bottom: screenHeight * 0.04,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
            child: Column(
              children: [
                Text(
                  'Trackizer the all in one app for tracking all your monthly subscriptions',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.90,
                  child: FilledButton.tonal(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => const SocialsAuthView(),
                        ),
                      );
                    },
                    child: Text(
                      'Get Started',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.90,
                  child: FilledButton.tonal(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                        elevation: 4,
                        backgroundColor:
                            Theme.of(context).colorScheme.onSurfaceVariant),
                    child: Text(
                      'I have an account',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
