

String calculate(String words){
  var x = words.split(" ");
  double num1;
  String operator = "";

  for(int i = 0 ; i < x.length ; i++){
    String char = x[i];
    if(char.isEmpty){
      continue;
    }else if(char == "+" || char == "x" || char == "/" || char == "-"){
      operator = char;
    }
    else{
      double angka = double.parse(x[i]);
      if(i == 0){
        num1 = angka;
      }else if(operator == "+"){
        num1 = num1 + angka;
      }else if(operator == "-"){
        num1 = num1 - angka;
      }else if(operator == "x"){
        num1 = num1 * angka;
      }else if(operator == "/"){
        num1 = num1 / angka;
      }
    }
  }
  return num1.toString();
}

void main(){

}
