class Country {
  var name;
  var language;
  var _animal;
  var color = "แดงขาวน้ำเงิน";
  static var city = "ซาเกร็บ";

//Constructor
  Country(this.name, this.language);
//Constructor
  //Country.language(String name, String Language) : this(name, Language);
//method
  String showLanguage() => this.language;

  void setAnimal(String animal) {
    this._animal = animal;
  }

  String getAnimal() => this._animal;

  static void callHello() => print("Hi");

  void showPeople() {
    print("คนในประเทศ 4,105,493	คน");
  }
}
