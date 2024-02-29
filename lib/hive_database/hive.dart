import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart'as path_provider;
import '../main.dart';

void main() async {
  // Initialize Hive and open the box
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
  await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  await Hive.openBox('users');

  runApp(MyApp());
}

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  void _login() {
    final username = _nameController.text;
    final password = _passController.text;

    // Check if username exists in Hive
    final usersBox = Hive.box('users');
    final savedUser = usersBox.get(username);

    if (savedUser != null && savedUser['password'] == password) {
      // Navigate to Home screen or perform other actions
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Login Successful'),
          content: Text('Welcome, $username!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      // Invalid username or password
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text('Login Failed'),
          content: Text('Invalid username or password.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue,Colors.pinkAccent],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  hintText: "name",
                  fillColor: Colors.white38,
                  filled: true,
                ),
              ),),
              Padding(padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _passController,
                  decoration: InputDecoration(
                    fillColor: Colors.white38,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                      hintText: "password"
                  ),
                  obscureText: true,
                ),),
              SizedBox(height: 15,),

              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen
                  ),
                  onPressed: (){
                    _login();
                  },
                  child: Text("Submit",style: TextStyle(color: Colors.white),))
            ],
          ),
        ),
      ),

    );
  }
}
