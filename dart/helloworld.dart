void main(){
 callWeb("Google",port: "443", protocal: "https");
}


void callWeb(String web, {String protocal ="http" ,String port ="80"}) => print("$web $protocal $port"); 


String callGen(int year){
    print(year);
  var x =  (year >= 1996) ? print("Gne Z"):print("Gen Y หรือ Upper");
  return x;
}
int callColor([String newcolor = "pink"]){
    List<dynamic> colors = ["red","blue","green","black"];

    colors.add(newcolor);

    for(var i in colors){
        print(i);
    }
    return colors.length;
}