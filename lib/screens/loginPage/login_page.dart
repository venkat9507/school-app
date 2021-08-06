// import 'package:firebase/firebase.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:flutter_school_app_july_1/constants/color_constants.dart';
// import 'package:flutter_school_app_july_1/constants/firebase_constants.dart';
// import 'package:flutter_school_app_july_1/screens/dashboard/dashboard.dart';
import 'package:flutter_school_app_july_1/screens/widgets/text_widget.dart';
import 'package:flutter_school_app_july_1/services/auth.dart';
// import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key, @required this.auth}) : super(key: key);
  final AuthenticationService auth;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernamecontroller= TextEditingController();
  final TextEditingController _passwordcontroller= TextEditingController();

  String get _username=>_usernamecontroller.text;
  String get _password=>_passwordcontroller.text;


  void _submit()async {
    print("================================");
    print(_username);
    print(_password);
    print("================================");
    await widget.auth.signIn(username:_username, password:_password );

  }






  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    print('$isSelected');

    super.initState();
  }
  final _auth= FirebaseAuth.instance;
  //
  // String username;
  // String password;


  bool _viewPassword= true;
  bool  _obscuretext=true;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var physicalPixelWidth = mediaQuery.size.width * mediaQuery.devicePixelRatio;
    var physicalPixelHeight = mediaQuery.size.height * mediaQuery.devicePixelRatio;



    return SafeArea(

      child: Scaffold(
        backgroundColor: Colors.white,

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/4600166.jpg',),
            fit: BoxFit.scaleDown,
          ),
        ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Image(image: AssetImage('assets/school (1).png'),
                height: 100,width: 100,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                ToggleButtons(
                  borderColor: Colors.blueGrey,

                  selectedColor: Colors.black,
                  fillColor: Colors.deepOrangeAccent,
                  renderBorder: true,
                  borderRadius: BorderRadius.circular(20),
                  onPressed: (int index){
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }

                    });

                  },

                    children: [
                      Container(width: 100,child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Student'),
                      )),
                      Container(width: 100,child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text('Parent'),
                      )),



                ], isSelected: isSelected),
              ),



              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,
                  child: TextField(
                    controller: _usernamecontroller,
                    onChanged: (value){
                      // username = _usernamecontroller.text;
                    },
                    decoration:InputDecoration(
              hintText: isSelected.first?'  Register Number':'  Mobile Number',
                      filled: true,
                      fillColor: Colors.deepPurpleAccent.withOpacity(0.9),
                      focusColor: Colors.greenAccent.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 50,
                  child: TextField(
                    controller: _passwordcontroller,
                    onChanged: (value){
                      // password=_passwordcontroller.text;
                    },
                    textAlign: TextAlign.justify,
                    obscureText: _obscuretext,
                    decoration:InputDecoration(
                      // disabledBorder: InputBorder.none,
                      // enabledBorder: InputBorder.none,
                      // enabled: true,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: IconButton(onPressed: (){
                          setState(() {
                            _viewPassword=!_viewPassword;
                            _obscuretext=!_obscuretext;

                          });

                        },icon:_viewPassword==false? Icon(Icons.visibility):Icon(Icons.visibility_off),),
                      ),
                      hintText: '  Password',
                      filled: true,
                      fillColor: Colors.deepPurpleAccent.withOpacity(0.9),
                      focusColor: Colors.greenAccent.withOpacity(0.5),
                      // border: InputBorder.none,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none,

                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(height: 50,width: 100,child: ElevatedButton(
                    style: ButtonStyle(elevation: MaterialStateProperty.all(10),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),

                      shadowColor: MaterialStateProperty.all<Color>(Colors.green),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),

                            )
                        )
                    ),
                    onPressed: _submit, child: TextWidgetBold('Login'))),
              )
            ],
          ),
        ),
      ),



      ),
    );
  }
}
