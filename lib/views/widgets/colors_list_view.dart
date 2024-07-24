import 'package:flutter/material.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42*2,
      child: ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ColorsItem();
      },
      scrollDirection: Axis.horizontal,
      ),
    );
  }
}
class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.amber,
      radius: 38,
    );
  }
}