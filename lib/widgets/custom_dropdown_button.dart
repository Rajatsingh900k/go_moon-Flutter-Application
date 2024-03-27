import 'package:flutter/material.dart';

class CustomDropDownButtonClass extends StatelessWidget {
  List<String> values;
  double width;
  CustomDropDownButtonClass({required this.values, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
      width: width,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(
            53,
            53,
            53,
            1.0,
          ),
          borderRadius: BorderRadius.circular(
            10,
          )),
      child: DropdownButton(
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(child: Text(e), value: e);
          },
        ).toList(),
        underline: Container(),
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}