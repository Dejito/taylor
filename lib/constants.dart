import 'package:flutter/material.dart';

const kCustomersTextFieldDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    hintText: 'Search',
    hintStyle:  TextStyle(
        color: Colors.grey,
        fontSize: 18
    ),
    prefixIcon: Icon(
        Icons.search,
        size: 25,
        color: Colors.grey,
      ),
);