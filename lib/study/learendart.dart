void main(){
  // var say=printHello;
  // say();
  //
  // List list3=["G","j","Y"];
  // print(listTest(list3));
  //
  // var list1=null;
  // var list2=[0,...?list1];
  // print(list2);

  /*int a=1;

  switch(a){
    case 0:
      print(0);
      break;
    case 3:
      print(3);
      break;
    case 1:
      print("a:$a");
      break;
  }*/
  Cat cat=Cat();
  cat.heName='Tom~Jack';
  print(cat.oneName);
  print(cat.twoName);
  print(cat.heName);
}

void printHello(){
  print("hello");
}

List listTest(List list){
  var func=(str){return str*3;};

  for(var index=0;index<list.length;index++){
   list[index]=func(list[index]);
  }
  return list;
}
//"\"为转义字符
var s='It\'s easy to study flutter';


// String test(str){
//   return str*2;
// }

/*"..."为展开运算符可以将list1中的元素全部添加到list2中
var list1=[1,2,3];
var list2=[0,...list1];*/

class Cat{
  String oneName;
  String twoName;

  String get heName=>'$oneName $twoName';

  set heName(String v){
  List<String> listName=v.split('~');
    oneName=listName[0];
    twoName=listName[1];
  }
}
