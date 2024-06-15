import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget buildStatusDropdown(
    String? selectedStatus, // Updated parameter
    List<String> dropdownValues,
    void Function(String?) onChanged,
    ) {
  return DropdownButton<String>(
    value: selectedStatus,
    onChanged: onChanged,
    items: dropdownValues.map((itemValue) {
      return DropdownMenuItem<String>(
        value: itemValue,
        child: Text(
          itemValue,
          style: TextStyle(
            color: itemValue == "Select Status" ? Colors.grey : null,
            fontSize: 14,
          ),
        ),
      );
    }).toList(),
    underline: Container(),
  );

}
