import 'class/country.dart';
import 'class/problem.dart';

class City extends Country with Problem {
  var city;

  City(this.city) : super("โครเอเชีย", "โครเอเชีย");

  void callSuper() {
    super.showPeople();
    super.color;
  }

  @override
  void showPeople() {
    print("จำนวนคนในจังหวัด $city มี 2 พันคน");
  }
}
