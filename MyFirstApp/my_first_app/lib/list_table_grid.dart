import 'package:flutter/material.dart';

class ListTableGrid extends StatefulWidget {
  const ListTableGrid({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ListTableState createState() => _ListTableState();
}

class _ListTableState extends State<ListTableGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 10,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => Container(
          color: Colors.black,
          child: Center(
            child: Text(
              index.toString(),
              style: TextStyle(fontSize: 42, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
