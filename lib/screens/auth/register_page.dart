import 'package:ecommerce_int2/app_properties.dart';
import 'package:ecommerce_int2/screens/auth/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final String emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  @override
  Widget build(BuildContext context) {
    final SignUpController controller = Get.put(SignUpController());

    Widget title = Text(
      'TransitHomes Student Accomodation',
      style: TextStyle(
          color: Color.fromARGB(255, 218, 218, 229),
          fontSize: 20.0,
          fontWeight: FontWeight.w900,
          shadows: [
            BoxShadow(
              color: Color.fromRGBO(19, 19, 19, 0.50),
              offset: Offset(0, 5),
              blurRadius: 10.0,
            )
          ]),
    );

    Widget subTitle = Padding(
        padding: const EdgeInsets.only(right: 56.0),
        child: Text(
          'Create your account here',
          style: TextStyle(
            color: Color.fromARGB(255, 241, 181, 181),
            fontSize: 16.0,
          ),
        ));

    Widget registerButton = Positioned(
      left: MediaQuery.of(context).size.width / 4, // Adjusted left position
      bottom: 20.0, // Adjusted bottom position
      child: InkWell(
        onTap: () {
          //Navigator.of(context)
          //   .push(MaterialPageRoute(builder: (_) => ForgotPasswordPage()));
          if (_formKey.currentState!.validate()) {
            SignUpController.instance.registerUser(
                controller.email.text.trim(),
                controller.password.text.trim(),
                controller.password_2.text.trim());
            controller.email.clear();
            controller.password.clear();
            controller.password_2.clear();
            print('user created');

            /*print("The email is ${controller.email}");
            print("The password is ${controller.password}");*/
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 2, // Adjusted width
          height: 80,
          child: Center(
            child: Text(
              "Register",
              style: const TextStyle(
                color: const Color(0xfffefefe),
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 20.0,
              ),
            ),
          ),
          decoration: BoxDecoration(
            gradient: mainButton,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.16),
                offset: Offset(0, 5),
                blurRadius: 10.0,
              ),
            ],
            borderRadius: BorderRadius.circular(9.0),
          ),
        ),
      ),
    );

    Widget registerForm = Container(
      height: 300,
      child: Form(
        key: _formKey,
        child: Stack(
          children: <Widget>[
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 32.0, right: 12.0),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.8),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      controller: controller.email,
                      style: TextStyle(fontSize: 16.0),
                      decoration: InputDecoration(
                        labelText: 'Email', // Add a label if needed
                      ),
                      validator: (value) {
                        RegExp regExp = new RegExp(emailPattern);
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        } else if (!regExp.hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        // Add more validation if needed
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      controller: controller.password,
                      style: TextStyle(fontSize: 16.0),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        // Add a label if needed
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password must be more than 6 characters';
                        }
                        // Add more validation if needed
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextFormField(
                      controller: controller.password_2,
                      style: TextStyle(fontSize: 16.0),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        // Add a label if needed
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        } else if (value.length < 6) {
                          return 'Password must be more than 6 characters';
                        }
                        // Add more validation if needed
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            registerButton,
          ],
        ),
      ),
    );

    Widget socialRegister = Column(
      children: <Widget>[
        Text(
          'You can sign in with',
          style: TextStyle(
              fontSize: 16.0, fontStyle: FontStyle.italic, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.network(
                'https://fonts.gstatic.com/s/i/productlogos/googleg/v6/24px.svg',
                width: 100,
                height: 100,
              ),
              onPressed: () {},
              //color: Colors.white,
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/icons8-facebook.svg',
                width: 100,
                height: 100,
              ),
              onPressed: () {},
              //color: Colors.white
            ),
          ],
        )
      ],
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg-login-2.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.7),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Spacer(flex: 3),
                title,
                Spacer(),
                subTitle,
                Spacer(flex: 2),
                registerForm,
                Spacer(flex: 2),
                Padding(
                    padding: EdgeInsets.only(bottom: 20), child: socialRegister)
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 5,
            child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
