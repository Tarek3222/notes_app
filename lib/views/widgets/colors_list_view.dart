import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors =const [
    Color(0xff8FACEA),
    Color(0xff1D69D2),
    Color(0xff6B5CA5),
    Color(0xff031EE7),
    Color(0xff4E1BD9),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding:const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color=colors[index];
                setState(() {});
              },
              child: ColorsItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            backgroundColor: color,
            radius: 38,
            child:const Icon(Icons.done,color: Colors.black,size: 40,),
          )
        :  CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}
