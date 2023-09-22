import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  static List<String> items = ["item1", 'item2', "item3", "item4"];
  String? dropdownValue ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DropDown'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Container(
          width: 300,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(20)
          ),
          padding: const EdgeInsets.all(10),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              value: dropdownValue,
              items: items.map((e)
               => DropdownMenuItem(
                value: e,
                child: Text(e)
                )).toList(), 
              onChanged: (e) {
                setState(() {
                  dropdownValue = e;
                });
              },
              ),
          ),
        ),
      ) ,
    );
  }
}