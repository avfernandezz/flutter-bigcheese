import 'package:flutter/material.dart';

class CounterContainer extends StatefulWidget {
  int quantity;
  Function onPress;

  CounterContainer({this.quantity, this.onPress});

  @override
  _CounterContainerState createState() => _CounterContainerState();
}

class _CounterContainerState extends State<CounterContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
              setState(() {
                widget.quantity--;
              });
            },
            child: Icon(
              Icons.remove,
              size: 15,
            ),
            constraints: BoxConstraints.tightFor(width: 40, height: 35),
            shape: CircleBorder(),
          ),
          Text(widget.quantity.toString()),
          RawMaterialButton(
            onPressed: () {
              setState(() {
                widget.quantity++;
              });
            },
            child: Icon(
              Icons.add,
              size: 15,
            ),
            constraints: BoxConstraints.tightFor(width: 40, height: 35),
            shape: CircleBorder(),
          ),
        ],
      ),
    );
  }
}
