import 'package:flutter/material.dart';

class home_search_bar extends StatelessWidget {
  const home_search_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
            fillColor: Colors.grey.shade200,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none
            )
        ),
      ),
    );
  }
}