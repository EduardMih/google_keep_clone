import 'package:flutter/material.dart';

class MyColorPicker extends StatefulWidget {
  final List<Color> colors;
  final Function onSetColor;

  MyColorPicker({
    Key? key,
    required this.colors,
    required this.onSetColor
  }) : super(key: key);
  

  @override
  State<MyColorPicker> createState() => _MyColorPickerState();
}

class _MyColorPickerState extends State<MyColorPicker> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Theme.of(context).colorScheme.primary,
      height: 100,
      alignment: Alignment.topCenter,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: Container(
          height: 70,
          width: double.infinity,
          //color: Colors.red,
          child:  GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 1,
            //mainAxisSpacing: 10,
            children: List.generate(widget.colors.length, (index) {

              return InkWell(
                  onTap: () => widget.onSetColor(index),
                  child: Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0), child: Container(
                    //width: 20,
                    //height: 10,
                    decoration: BoxDecoration(
                      color: widget.colors[index],
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.75))
                    ),
                  ))
                );
            })
          )
        )
      )
    );
  }
}
