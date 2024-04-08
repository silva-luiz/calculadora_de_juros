import 'package:flutter/material.dart';

import '../_core/colors.dart';

InputDecoration getInputDecoration(String label) {
  return InputDecoration(
    hintText: label,
    fillColor: Colors.white70,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Color.fromARGB(255, 189, 188, 188), width: 2),
    ),
    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(color: AppColors.mainColor, width: 3),)
  );
}