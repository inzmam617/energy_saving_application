import 'package:flutter/material.dart';


class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.1),
      body: Column(
      children: [
        SizedBox(height: 50,),
        Center(child: Text("Customer Care Center",style: TextStyle(color: Colors.purple,fontSize: 25,fontWeight: FontWeight.bold),),),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Emergency" ,style: TextStyle(color: Colors.black,fontSize: 22),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(

                  color: Colors.purple
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("911(Inside Qatar)" ,style: TextStyle(color: Colors.purple,fontSize: 20),),
              ),
            ),

          ],
        ),
        SizedBox(height: 10,),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              border: Border.all(

                  color: Colors.purple
              )
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("+974 4449 4000 (Outside Qatar)" ,style: TextStyle(color: Colors.purple,fontSize: 20),),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Support Center" ,style: TextStyle(color: Colors.black,fontSize: 22),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  border: Border.all(

                      color: Colors.blue
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.question_mark_outlined,color: Colors.blue,),
                    Text("Support Form" ,style: TextStyle(color: Colors.blue,fontSize: 20),),
                  ],
                ),
              ),
            ),

          ],
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Service Center" ,style: TextStyle(color: Colors.black,fontSize: 22),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  border: Border.all(

                      color: Colors.blue
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.person_outline_rounded,color: Colors.blue,),
                    Text("Center Locations" ,style: TextStyle(color: Colors.blue,fontSize: 20),),
                  ],
                ),
              ),
            ),

          ],
        ),
        SizedBox(height: 20,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Whatsapp" ,style: TextStyle(color: Colors.black,fontSize: 22),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  border: Border.all(

                      color: Colors.purple
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("+974 3030 3391" ,style: TextStyle(color: Colors.purple,fontSize: 20),),
              ),
            ),

          ],
        ),

      ],
    ));
  }
}
