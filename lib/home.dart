import 'package:flutter/material.dart';





class Todo extends StatefulWidget {
  

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
 var output="";
  List<dynamic> todos=["Add your tasks here"];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     
     appBar: AppBar(
        title: Text("ToDo App by Ali "),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        elevation: 0.00,
        backgroundColor: Colors.black87,
      ),


      body:Container(
        decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1503327431567-3ab5e6e79140?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=80"),
                        fit: BoxFit.cover)),
        child: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context,index){
          return Container(
            height: 50,
            decoration: BoxDecoration(
    gradient: LinearGradient(
        colors: [Colors.orange.shade300, Colors.red.shade400])
  ),
            margin: EdgeInsets.only(top:15),
            child: ListTile(
              title: Text("${todos[index]}"),
              trailing: Container(
                width: 50,
                child: Row(
                  children: [
                    GestureDetector(onTap:(){
                    showDialog(context: context, builder: (context){
              return AlertDialog(
                title:Text("Edit Item"),
                content:TextField(
                  onChanged: (value){
                    output=value;
                  }
                ),
                actions: [
                  ElevatedButton(onPressed:(){
                   setState((){
                     todos.replaceRange(index,index+1,{output});
                   });
                   Navigator.of(context).pop();
                  }, child: Text("Edit"))
                ],
              );
          });
                     

                    },child: Icon(Icons.edit)),
                    GestureDetector(onTap:(){
                      setState(() {
                        todos.removeAt(index);
                      });
                    },child: Icon(Icons.clear_outlined)),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor :Colors.black,
        onPressed: (){
       
        showDialog(context: context, builder: (context){
            return AlertDialog(
              title:Text("Add Item"),
              content:TextField(
                onChanged: (value){
                  output=value;
                }
              ),
              actions: [
                ElevatedButton(
                  
                  
                  onPressed:(){
                 setState((){
                   todos.add(output);
                 });
                 Navigator.of(context).pop();
                }, child: Text("Tap to Add"),
     style: ElevatedButton.styleFrom(
      primary: Colors.teal,
      onPrimary: Colors.white,
      shadowColor: Colors.red,
      elevation: 5,
                               ),
                )
              ],
            );
        });
      },child: Icon(Icons.add),
      
      ),//flt button always comes in bottom
    );
  }
}


