import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class LocalDB {
  String dBname = "ced";

  Future<Database> ConnectDB() async {
    //ดึง path
    var directory = await getApplicationDocumentsDirectory();
    //  print(directory);
    var location = join(directory.path, this.dBname);
    //  print(location);

    var createDB = databaseFactoryIo;
    var dB = await createDB.openDatabase(location);
    //  print(dB);

    return dB;
  }

  Future<void> Register(name, surname, email, password) async {
    //  print("$name $surname $email $password");

    var dB = await this.ConnectDB();
    var Store = intMapStoreFactory.store('user');

    var data = await Store.add(dB, {
      'name': name,
      'surname': surname,
      'email': email,
      'password': password,
    }).then((value) {
      print('$value สำเร็จ');
    }).catchError((error) {
      //ป้องกัน
      print(error);
    });

    var user = await Store.find(dB);
    print(user);

    dB.close();
    //print(data);
  }

  Future<bool> login(email, password) async {
    var db = await this.ConnectDB();
    var store = intMapStoreFactory.store('user');

    var user = await store.find(db);
    //print(user);

    for (var item in user) {
      //print(item['email']);
      if (item['email'] == email && item['password'] == password) {
        //print('success');
        return true;
      }
    }
    return false;
  }
}
