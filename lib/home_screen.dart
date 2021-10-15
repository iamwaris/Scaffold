import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget{

  int position = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade200,
      appBar: AppBar(
        title: Text("APP THEME"),
        centerTitle: false,
        backgroundColor: Colors.orange,
        actions: [
            IconButton(onPressed: ()=> showDialog(context , DialogType.INFO), icon: Icon(Icons.add)),
            IconButton(onPressed: ()=> showDialog(context , DialogType.ERROR), icon: Icon(Icons.camera)),
            IconButton(onPressed: ()=> showDialog(context , DialogType.SUCCES), icon: Icon(Icons.car_rental))
        ],
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 500,
        color: Colors.grey,
        child: Icon(Icons.add , size: 60,),
      ),

      body: Container(child : Center(child : Text("Scaffold Theme!"))),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: position,
        backgroundColor: Colors.purple,
        type : BottomNavigationBarType.fixed,
        items: [
          // BottomNavigationBarItem(icon: Icon(Icons.star) , label: "Star"),
          BottomNavigationBarItem(icon: Icon(Icons.inbox , size: 16,) , label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.file_present, size: 16) , label: "File"),
          BottomNavigationBarItem(icon: Icon(Icons.file_present, size: 16) , label: "File"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
          // BottomNavigationBarItem(icon: Icon(Icons.file_present) , label: "File"),
          // BottomNavigationBarItem(icon: Icon(Icons.file_present) , label: "File")
        ],
        onTap: (int i) => bottomItemSelect(i),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message , color: Colors.white,),
        onPressed: () {

      },),
    );
  }

  showDialog(BuildContext c , DialogType type){
    AwesomeDialog(
      context: c,
      dialogType: type,
      animType: AnimType.BOTTOMSLIDE,
      title: 'My Custom Title',
      desc: 'My Custom Description',
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    )..show();
  }
}

bottomItemSelect(int index){
  // setState => position = index
  print("Index = $index");
  if(index == 0){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
  else if(index == 1){
      setIcon(Icons.add);
  }
  else{

  }



  }

setIcon(IconData icon){

}