import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List t1=['File manager','Exercise Tips','Food recipe','Gym','e-wallet'];
  List t2=['theme 1 screens','theme 2 screens','theme 3 screens','theme 4 screens','theme 5 screens'];
  List c2= [Colors.amber,Colors.tealAccent,Colors.deepPurpleAccent,Colors.cyanAccent,Colors.amber];
  List i2=[Icons.file_copy,Icons.person_rounded,Icons.light_mode,Icons.shopping_bag,Icons.wallet];
  List t =['Default Theme','Full Apps','Integration','Dashboard'];
  List c =[Colors.cyanAccent,Colors.deepPurpleAccent,Colors.tealAccent,Colors.amber];
  List i =[Icons.phone_android_outlined,Icons.apps,Icons.sports_basketball_outlined,Icons.dashboard];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('AllInOne UI Kit',style:
        TextStyle(color: Colors.black,fontSize: 20),
        ),
        backgroundColor: Colors.white,actions: [
          Icon(Icons.toggle_off_outlined,size: 45,color: Colors.grey,),
          ],),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: GridView.builder(shrinkWrap:true,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15),itemCount:t.length
                    , itemBuilder: (BuildContext context,int index){
                  return Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: c[index]),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(i[index],color: Colors.white,size: 45,),
                        Text(t[index],style: TextStyle(color: Colors.white,fontSize: 25),),

                      ],
                    ),
                  );
                    }),
              ),
                Align(alignment:Alignment.centerLeft,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Themes',style:  TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    )),
                ListView.builder(shrinkWrap:true,itemCount: i2.length,itemBuilder: (BuildContext context,int index){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         height: 80,
                       width: 80,
                       color: c2[index],
                         child: Icon(i2[index],color: Colors.white,),
                       ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(t1[index],style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                          Text(t2[index],style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.w600),),
                        ],
                       ),
                       FloatingActionButton(onPressed: (){
                        setState(() {

                        });

                       },
                       backgroundColor:c2[index]
                         ,
                       child: Icon(Icons.arrow_forward_ios,color: Colors.white,),),
                     ],
                   ),
                 );


                })
            ],
          ),
        ),
      ),
    );
  }
}
