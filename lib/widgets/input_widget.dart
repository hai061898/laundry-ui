import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry/utils/constants.dart';

class InputWidget extends StatelessWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final double height;
  final String topLabel;
  final bool obscureText;

  const InputWidget({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.height = 48.0,
    this.topLabel = "",
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(topLabel),
        SizedBox(height: 5.0),
        Container(
          height: ScreenUtil().setHeight(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextFormField(
            obscureText: obscureText,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromRGBO(74, 77, 84, 0.2),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
              prefixIcon: Icon(
                prefixIcon,
                color: Color.fromRGBO(105, 108, 121, 1),
              ),
              hintText: this.hintText,
              hintStyle: TextStyle(
                fontSize: 14.0,
                color: Color.fromRGBO(105, 108, 121, 0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
