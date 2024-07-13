import 'package:flutter/material.dart';

class PlayWithStatemanagment extends StatefulWidget {
  PlayWithStatemanagment({super.key});

  @override
  State<PlayWithStatemanagment> createState() => _PlayWithStatemanagmentState();
}

class _PlayWithStatemanagmentState extends State<PlayWithStatemanagment> {
  List<String> data = ["قيد التنفيذ", "الملغية", "المكتملة", "تحت المراجعة", "تمت"];

  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            SizedBox(height: 100),

            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedItemIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(2),
                      width: 100,
                      decoration: BoxDecoration(
                        color: _selectedItemIndex == index ? Colors.red : Color.fromARGB(255, 223, 222, 227),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          data[index],
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 2,
              color: Colors.black,
            ),
            SizedBox(height: 20),
            Center(
              child: PasswordTextField(),
            ),
          ],
        ),
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isVisible = false;
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: !isVisible,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              isVisible = !isVisible;
            });
          },
          child: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 1),
          borderRadius: BorderRadius.circular(22),
        ),
      ),
    );
  }
}
