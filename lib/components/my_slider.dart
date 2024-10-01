import 'package:flutter/material.dart';
class MySlider extends StatelessWidget {

  double sliderValue = 20;
  final ValueChanged<double> fun; //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
  MySlider(this.sliderValue,this.fun);  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${sliderValue}",
          style: TextStyle(fontSize: 25,color: Colors.white, ),
        ),
        SizedBox(
          width: 250,
          child: Slider(
            value: sliderValue,
            min: 8,
            max: 20,
            divisions: 12,
            label: sliderValue.round().toString(),
            onChanged: fun,    //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
          ),
        ),
      ],
    );
  }
}
