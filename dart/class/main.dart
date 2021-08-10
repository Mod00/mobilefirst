import '../city.dart';
import 'country.dart';

void main() {
  City item = City("เมืองสปลิต");
  print(item.city);
  print(item.color);
  print(item.name);
  print(item.language);

  item.callSuper();
  item.showPeople();
  item.showProblem();
}


/*
  var item = new Country.language("โครเอเชีย", "โครเอเชีย");
  print("ประเทศ :" + item.name);
  print("ภาษาหลัก :" + item.showLanguage());

  item.setAnimal("มาร์เทิน");
  print("สัตว์ประจำชาติ :" + item.getAnimal());
  print("เมืองหลวง :" + Country.city);

  Country.callHello();
  */