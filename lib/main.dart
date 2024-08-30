import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({Key? key}) : super(key: key);

  @override
  _Project1State createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  List verse = [
    {
      "line1": "0- لا تشكُ للناسِ جرحاً أنتَ صاحبهُ",
      "line2": "لا يؤلمُ الجرحَ إلا منْ به ألمُ"
    },
    {
      "line1": "1- شَكْوَاكَ لِلنَّاسِ يا ابنَ النَّاس منْقصَةٌ",
      "line2": "ومَن مِنَ النَّاسِ صَاحِ مَا بِهِ سَقَمُ"
    },
    {
      "line1": "2- فَإِنْ شَكَوْتَ لِمَنْ طَابَ الزَّمَانُ لَهُ",
      "line2": "عَيْنَاكَ تَغْلِي وَمَنْ تَشْكُو لَهُ صَنَمُ"
    },
    {
      "line1": "3- وَإِذَا شَكَوْتَ لِمَنْ شَكْوَاكَ تُسْعِدُهُ",
      "line2": "أَضَفْتَ جُرْحًا لِجُرْحِكَ اِسْمُهُ النَّدَمُ"
    },
  ];

  int myIndex = 0;

  changeindex(String dertcion) {
      
 switch (dertcion) { 
    case "right" : 
    setState(() {
        if (myIndex == verse.length - 1) {
          myIndex = 0;
        } else {
          myIndex++;
        }
      });
      break;
      case 'left':
      setState(() {
        if (myIndex == 0) {
          myIndex = verse.length - 1;
        } else {
          myIndex--;
        }
      });
    }
   }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              verse[myIndex]["line1"],
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              verse[myIndex]["line2"],
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeindex('left');
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    changeindex("right");
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_right,
                    size: 60,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
