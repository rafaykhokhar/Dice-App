import 'package:basics_creating_widgets/dice_roller.dart';
import 'package:flutter/material.dart';
import 'dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // GradientContainer( this.colors,{super.key});
  const GradientContainer(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;

 

  GradientContainer.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.purpleAccent;

  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: [color1, color2])),
      child: Center(
        child:DiceRoller()
      ),
    );
  }
}

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}


// class GradientContainer extends StatelessWidget {
//   // GradientContainer( this.colors,{super.key});
//   const GradientContainer(this.color1, this.color2, {super.key});
//   final Color color1;
//   final Color color2;
//   const GradientContainer.purple({super.key}): color1 = Colors.purple, color2 = Colors.purpleAccent;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               begin: startAlignment,
//               end: endAlignment,
//               colors: [color1, color2])),
//       child: const Center(
//         child: StyledText('hello world'),
//       ),
//     );
//   }
// }

// class StyledText extends StatelessWidget {
//   const StyledText(this.text, {super.key});
//   final String text;
//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: const TextStyle(
//           fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),
//     );
//   }
// }
