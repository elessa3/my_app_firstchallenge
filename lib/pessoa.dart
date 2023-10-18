class Pessoa {
  String _name = "";
  double? _weight;
  double? _height; 


  void setName(String name) {
    _name = name;
  }

  String getName() {
    return _name;
  }

  Pessoa(String name, double weight, double height) {
    _name = name;
    _weight = weight;
    _height = height;
  }

  double calculoDoIMC(double weight, double height) {    
      return weight / (height * height);    
  }

  String resultadoGeral(double imc){
      if (imc < 16) {
         return 'Magreza grave';
      } else if (imc < 17) {
          return 'Magreza moderada';      
      } else if (imc < 18.5) {
          return 'Magreza leve';      
      } else if (imc < 25) {
          return 'Saudável';
      } else if (imc < 30) {
          return 'Sobrepeso';
      } else if (imc < 35) {
          return 'Obesidade grau I';
      } else if (imc < 40) {
          return 'Obesidade grau II(severa)';
      } else {
         return 'Obesidade grau III (móbida';
      }
    }
}
