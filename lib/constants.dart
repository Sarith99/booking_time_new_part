import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  labelText: '',
  labelStyle: TextStyle(color: Colors.grey, fontSize: 17.0),
  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.purpleAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);
