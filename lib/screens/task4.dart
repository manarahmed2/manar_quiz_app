import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app_iti/my_cubit.dart'; // تأكد من مسار استيراد الملف

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: BlocBuilder<MyCubit, MyState>(
        builder: (context, state) {
          if (state is InitialState) {
            return _buildInitialStateUI(context);
          } else if (state is ShowTextState) {
            return _buildShowTextUI();
          } else if (state is ShowImageState) {
            return _buildShowImageUI();
          } else if (state is ShowCircleState) {
            return _buildShowCircleUI();
          } else {
            return Text('Unknown State');
          }
        },
      ),
    );
  }

  Widget _buildInitialStateUI(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              context.read<MyCubit>().showText();
            },
            child: Text('Show Text'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<MyCubit>().showImage();
            },
            child: Text('Show Image'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<MyCubit>().showCircle();
            },
            child: Text('Show Circle'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<MyCubit>().reset();
            },
            child: Text('Reset'),
          ),
        ],
      ),
    );
  }

  Widget _buildShowTextUI() {
    return Center(
      child: Text('Showing Text'),
    );
  }

  Widget _buildShowImageUI() {
    return Center(
      child: Image.asset('assets/images/your_image.png'),
    );
  }

  Widget _buildShowCircleUI() {
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 50,
      ),
    );
  }
}
