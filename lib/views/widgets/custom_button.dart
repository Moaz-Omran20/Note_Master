import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
        onPressed: () {},
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
