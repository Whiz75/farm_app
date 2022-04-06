import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_apps/components/BottomNavContainer.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({Key? key}) : super(key: key);

  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login_screen> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  //login components
  final loginLabel = const Text(
    'LOGIN',
    style: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
  );
  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    initialValue: "",
    decoration: InputDecoration(
      hintText: 'Username',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
  final password = TextFormField(
    obscureText: true,
    initialValue: "",
    decoration: InputDecoration(
      hintText: 'Password',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
  final forgotPasswordLabel = InkWell(
    child: const Text(
      "Forgot password?",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.end,
      overflow: TextOverflow.visible,
      softWrap: true,
    ),
    onTap: () {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder:
      //     (BuildContext context)=> const PasswordResetScreen()));
    },
  );

  //register components
  final registerLabel = const Text('REGISTER',
    style: TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
  );
  final regEmail = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    initialValue: "",
    decoration: InputDecoration(
      hintText: 'Email',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
  final regName = TextFormField(
    keyboardType: TextInputType.name,
    autofocus: false,
    initialValue: "",
    decoration: InputDecoration(
      hintText: 'Name',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
  final regSurname = TextFormField(
    keyboardType: TextInputType.name,
    autofocus: false,
    initialValue: "",
    decoration: InputDecoration(
      hintText: 'Surname',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
  final regPassword = TextFormField(
    obscureText: true,
    initialValue: "",
    decoration: InputDecoration(
      hintText: 'Password',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
  final regConfirmPassword = TextFormField(
    obscureText: true,
    initialValue: "",
    decoration: InputDecoration(
      hintText: 'Confirm password',
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
  final backToLoginLabel = InkWell(
    child: const Text(
      "Forgot password?",
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.end,
      overflow: TextOverflow.visible,
      softWrap: true,
    ),
    onTap: () {
      // Navigator.pushReplacement(context, MaterialPageRoute(builder:
      //     (BuildContext context)=> const PasswordResetScreen()));
    },
  );
  final registerBtn = MaterialButton(
    color: Colors.green,
    child: const Text(
      "REGISTER",
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    onPressed: () {},
  );

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    //final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: FlipCard(
            key: cardKey,
            flipOnTouch: false,
            direction: FlipDirection.HORIZONTAL,
            //front of card
            front: Container(
              height: height * 0.6,
              width: 385,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
                color: Colors.blueAccent,
              ),
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Expanded(
                  flex: 1,
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    children: [
                      loginLabel,
                      const SizedBox(
                        height: 10.0,
                      ),
                      email,
                      const SizedBox(
                        height: 10,
                      ),
                      password,
                      const SizedBox(
                        height: 10,
                      ),
                      forgotPasswordLabel,
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        color: Colors.green,
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder:
                              (BuildContext context)=>const Containter()));
                        },
                      ),
                      MaterialButton(
                        color: Colors.green,
                        child: const Text(
                          "REGISTER",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          cardKey.currentState?.toggleCard();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //back of card
            back: Container(
              height: height * 0.8,
              width: 385,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                color: Colors.blueAccent,
              ),
              child: Center(
                child: Expanded(
                  flex: 1,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    shrinkWrap: true,
                    children: [
                      registerLabel,
                      const SizedBox(
                        height: 10.0,
                      ),
                      regEmail,
                      const SizedBox(
                        height: 10.0,
                      ),
                      regName,
                      const SizedBox(
                        height: 10.0,
                      ),
                      regSurname,
                      const SizedBox(
                        height: 10.0,
                      ),
                      regPassword,
                      const SizedBox(
                        height: 10.0,
                      ),
                      regConfirmPassword,
                      const SizedBox(
                        height: 8.0,
                      ),
                      registerBtn,
                      const SizedBox(
                        height: 8.0,
                      ),
                      InkWell(
                        onTap: () {
                          cardKey.currentState?.toggleCard();
                        },
                        child: const Text(
                          'Already have an account? Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
