import 'package:flutter/material.dart';

class SearchDialog {
  searchDialog(BuildContext context, controller) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            alignment: Alignment.center,
            content: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search food...",
                prefixIcon: const Icon(Icons.search),

                //enable-->
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  borderSide: const BorderSide(color: Colors.black),
                ),

                //focus-->
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors
                          .black), // Set border color when the field is focused
                  borderRadius: BorderRadius.circular(14.0),
                ),

                //focus-->
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors
                          .green), // Set border color when the field is focused
                  borderRadius: BorderRadius.circular(14.0),
                ),
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                  if (controller.text.isEmpty) {
                    return;
                  } else {
                    Navigator.pop(context, controller.text);
                    controller.clear();
                  }
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      "SEARCH",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}
