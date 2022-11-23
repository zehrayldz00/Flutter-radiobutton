import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int radioDeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            RadioListTile(
              title: Text("Kadın"),
              value: 1,
              groupValue: radioDeger,
              activeColor: Color(0xffd37db2),
              onChanged: (int? veri){
                setState(() {
                  radioDeger = veri!;
                });
                print("Kadın seçildi.");
              },
            ),
            RadioListTile(
              title: Text("Erkek"),
              value: 2,
              groupValue: radioDeger,
              activeColor: Color(0xff90c6d7),
              onChanged: (int? veri){
                setState(() {
                  radioDeger = veri!;
                });
                print("Erkek seçildi.");
              },
            ),
            ElevatedButton(
              child:Text("Göster"),
              onPressed: (){
                if (radioDeger==1){
                  print("Kadın seçeneği seçildi");
                }
                if (radioDeger==2){
                  print("Erkek seçeneği seçildi");
                }
              
              }, 
              ),
          ],
        ),
      ),
    );
  }
}
