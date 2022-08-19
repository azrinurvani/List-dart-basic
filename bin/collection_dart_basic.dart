import 'package:collection_dart_basic/collection_dart_basic.dart' as collection_dart_basic;

void main(List<String> arguments) {
  List<int> listNumber = [1,2,3,4,5];
  print(listNumber);

  var listNumber_2 = [1,2,3,4,5];
  print(listNumber_2);
  var listString = ['Halo','Aku','Azri','Nurvani'];
  print(listString);

  //dynamic list
  List dynamicList = [1,'Azri',true];
  print(dynamicList);
  print(dynamicList[1]);

  for(int i=0;i<dynamicList.length;i++){
    print(dynamicList[i]);
  }

  //ADD List
  listString.add('Ganteng'); //add data di list pada index terakhir
  listString.insert(0, 'Selamat');
  listString.insert(1, 'Pagi'); //insert value pada index tertentu
  listString[1] = 'Siang'; //merubah nilai pada index tertentu


  //Remove list
  listString.remove('Ganteng'); // Menghapus list dengan nilai Programming
  listString.removeAt(1);           // Menghapus list pada index ke-1
  listString.removeLast();          // Menghapus data list terakhir
  listString.removeRange(0, 2);     // Menghapus list mulai index ke-0 sampai ke-1 (indeks 2 masih dipertahankan)

  //foreach
  listString.forEach((element) => print(element)); //dikenal sebagai lambda atau anonymous function

  /*
  * SPREAD OPERATOR
  * */

  var favorites = ['Seafood','Salad','Nugget','Soup'];
  var others = ['Cake','Pie','Donut'];
  // var allFavourites = [favorites,others];
  var allFavourites = [...favorites,...others]; //teknik spread operator untuk menggabungkan 2 list menjadi 1
  print(allFavourites);

  /*
  * NULL AWARE pada LIST
  * */
  //Untuk mengatasi List yang bisa bernilai null, kita dapat menggunakan null-aware spread operator (...?) seperti berikut:
  var list;
  var list2 = [0,...?list];
  print(list2);
}
