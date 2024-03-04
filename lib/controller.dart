import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class Controller extends GetxController{
  String input = '';
  String answer = '';
  String count = '';
  String expression = "";
  double fontSize = 38;
  pressedButton(String a) {
      if (a == 'C') {
        input = "";
        count = "";
        expression = "";
      }
      else if (a == 'Del') {
        if (input.isEmpty) {
          input = '';
        } else {
          input = input.substring(0, input.length - 1);
        }
      }
      else if (a == "ans") {
        input = input + answer;
      }
      else if (a == '=') {
        if(input==''){
          count='';
        }
        else{
          expression = input;
          expression = expression.replaceAll('×', '*');
          expression = expression.replaceAll('÷', '/');
          try {
            Parser p = Parser();
            Expression exp = p.parse(expression);
            ContextModel cm = ContextModel();
            count = '${exp.evaluate(EvaluationType.REAL, cm)}';
            double h = double.parse(count);
            if (h == h.toInt()) {
              int s = h.toInt();
              count = s.toString();

            }
            answer = count;
          } catch (e) {
            count = "error";
          }
        }
      }
      else {
        input = input + a;
      }
      update();
  }
}