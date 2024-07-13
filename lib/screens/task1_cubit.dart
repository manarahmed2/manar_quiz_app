import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_iti/screens/cubit/play_cubit.dart';
import 'cubit/play_cubit.dart';

class PlayWithStatemanagment2 extends StatelessWidget {
  PlayWithStatemanagment2({super.key});

  final List<String> data = ["قيد التنفيذ", "الملغية", "المكتملة", "تحت المراجعة", "تمت"];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PlayCubit(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              SizedBox(
                height: 50,
                child: BlocBuilder<PlayCubit, int>(
                  builder: (context, selectedIndex) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            context.read<PlayCubit>().selectItem(index);
                          },
                          child: Container(
                            margin: EdgeInsets.all(4),
                            padding: EdgeInsets.all(2),
                            width: 100,
                            decoration: BoxDecoration(
                              color: selectedIndex == index ? Colors.red : Color.fromARGB(255, 223, 222, 227),
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
