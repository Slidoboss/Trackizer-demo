import 'package:flutter/material.dart';

class EmailauthView extends StatefulWidget {
  const EmailauthView({super.key});

  @override
  State<EmailauthView> createState() => _EmailauthViewState();
}

class _EmailauthViewState extends State<EmailauthView> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 75,
            width: 150,
          ),
          const Spacer(),
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                  ),
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  validator: (value) {
                    if (value == null ||
                        value.trim().isEmpty ||
                        !value.contains('@')) {
                      return 'Please enter valid email address';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // _enteredEmail = value!;
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
