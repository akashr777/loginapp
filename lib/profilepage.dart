import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileScreen(),
  ));
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Dummy data for profile
  TextEditingController _usernameController = TextEditingController(
      text: FirebaseAuth.instance.currentUser?.email??'Name');
  TextEditingController _emailController =
      TextEditingController(text: 'akash@gmail.com');
  TextEditingController _phoneController =
      TextEditingController(text: '7034579250');
  TextEditingController _passwordController =
      TextEditingController(text: '********');

  bool _isEditable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set a clean white background
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Picture with Gradient
            Container(
              height: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade600, Colors.purple.shade300],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-C_UAhXq9GfuGO452EEzfbKnh1viQB9EDBQ&s',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Username with enhanced styling
            Text(
              _usernameController.text,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple[800],
                fontFamily: 'Hind',
              ),
            ),

            // Role with a subtle effect
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                color: Colors.purple[600],
                fontSize: 18.0,
                letterSpacing: 1.5,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 10),

            // Divider with color
            Divider(
              indent: 80,
              endIndent: 80,
              color: Colors.purple[300],
              thickness: 1.5,
            ),
            SizedBox(height: 20),

            // Editable Profile Details (Phone, Email, Password)
            _buildProfileDetail(
              controller: _phoneController,
              label: 'Phone',
              isEditable: _isEditable,
            ),
            _buildProfileDetail(
              controller: _emailController,
              label: 'Email',
              isEditable: _isEditable,
            ),
            _buildPasswordDetail(),

            // Save/Toggle Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                  backgroundColor:
                      Colors.purple, // Use backgroundColor instead of primary
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _isEditable = !_isEditable;
                  });
                },
                child: Text(
                  _isEditable ? 'Save Changes' : 'Edit Profile',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget to create the editable profile fields (Phone, Email)
  Widget _buildProfileDetail({
    required TextEditingController controller,
    required String label,
    required bool isEditable,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextField(
          controller: controller,
          enabled: isEditable, // Toggle editability
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: Colors.purple),
            border: InputBorder.none,
            hintText: label,
            hintStyle: TextStyle(color: Colors.purple[300]),
          ),
        ),
      ),
    );
  }

  // Widget for Password with editability
  Widget _buildPasswordDetail() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: TextField(
          controller: _passwordController,
          obscureText: true, // Hide password text
          enabled: _isEditable, // Toggle editability
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(color: Colors.purple),
            border: InputBorder.none,
            hintText: '********',
            hintStyle: TextStyle(color: Colors.purple[300]),
          ),
        ),
      ),
    );
  }
}
