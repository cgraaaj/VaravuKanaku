import 'package:flutter/material.dart';

class Oil  extends StatefulWidget{
  @override
  Sta createState() => new Sta();
}
class Sta extends State<Oil> {
  String _text = '';

  void onPressed()
  {
    setState(() {
           sum = nalenaiTotal+theenaiTotal+kaenaiTotal;
        });
    
    print("the value is $sum"); 
  }



  void onChange(String value)
  {
    _text = value;
  }

  int nalenaiVilaiL = 250;
  int theenaiVilaiL = 260;
  int kaenaiVilaiL = 240;

  double nalenaiVilaiML = .25;
  double theenaiVilaiML = .26;
  double kaenaiVilaiML = .24;

  int nalenai = -1;
  int theenai = -1;
  int kaenai = -1;

  double nalenaiTotal = 0.0;
  double theenaiTotal = 0.0;
  double kaenaiTotal = 0.0;

  double sum = 0.0;

  final TextEditingController _controllernal = new TextEditingController();
  final TextEditingController _controllerthe = new TextEditingController();
  final TextEditingController _controllerka = new TextEditingController();

  void onChangednal(int value){
    
    setState(() {
      int quantity = int.parse(_controllernal.text);
          nalenai = value; 
          switch(nalenai)
          {
            case 0:
            nalenaiTotal = quantity*nalenaiVilaiL.roundToDouble();
            print('nallenai in l $nalenaiTotal');
            break;
            case 1:
            nalenaiTotal = quantity.roundToDouble()*nalenaiVilaiML;
            print("nallenai in ml $nalenaiTotal");
            break;
          }        
        }); 
  }

  void onChangedthe(int value){
      setState(() {
      int quantity = int.parse(_controllerthe.text);
          theenai = value; 
          switch(theenai)
          {
            case 0:
            theenaiTotal = quantity*theenaiVilaiL.roundToDouble();
            print('nallenai in l $theenaiTotal');
            break;
            case 1:
            theenaiTotal = quantity.roundToDouble()*theenaiVilaiML;
            print("nallenai in ml $theenaiTotal");
            break;
          }        
        });         
        
  }

  void onChangedka(int value){
    setState(() {
      int quantity = int.parse(_controllerka.text);
          kaenai = value;         
        switch(kaenai)
          {
            case 0:
            kaenaiTotal = quantity*kaenaiVilaiL.roundToDouble();
            print('nallenai in l $kaenaiTotal');
            break;
            case 1:
            kaenaiTotal = quantity.roundToDouble()*kaenaiVilaiML;
            print("nallenai in ml $kaenaiTotal");
            break;
          }        
        }); 
  }

  void onChangeTextNal()
  {

  }
  String oilType = null;
  
  Widget bodyData() => DataTable(
    columns: <DataColumn>[
      DataColumn(
        label: Text("Oil Name"),
        numeric: false, 
      ),
      DataColumn(
        label: Text("L"),
        numeric: false, 
      ),
      DataColumn(
        label: Text("ml"),
        numeric: false, 
      ),
      DataColumn(
        label: Text("Quatity"),
        numeric: false, 
      ),
      
    ],
    rows: <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(
            Text("ந.எண்ணெய்")
          ),
          DataCell(
            Radio(
               value: 0,groupValue: nalenai,onChanged: (int value){onChangednal(value);},
             )
          ),
          DataCell(
            Radio(
               value: 1,groupValue: nalenai,onChanged: (int value){onChangednal(value);},
             )
          ),
          DataCell(
           
               TextField(
               controller: _controllernal,
               keyboardType: TextInputType.number,
               
             )
          ),
          
        ]
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(
            Text("தே.எண்ணெய்")
          ),
          DataCell(
            Radio(
               value: 0,groupValue: theenai,onChanged: (int value){onChangedthe(value);},
             )
          ),
          DataCell(
            Radio(
               value: 1,groupValue: theenai,onChanged: (int value){onChangedthe(value);},
             )
          ),
          DataCell(
           
               TextField(
               controller: _controllerthe,
               keyboardType: TextInputType.number
             )
          ),
          
        ]
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(
            Text("க.எண்ணெய்")
          ),
          DataCell(
            Radio(
               value: 0,groupValue: kaenai,onChanged: (int value){onChangedka(value);},
             )
          ),
          DataCell(
            Radio(
               value: 1,groupValue: kaenai,onChanged: (int value){onChangedka(value);},
             )
          ),
          DataCell(
           
               TextField(
               controller: _controllerka,
               keyboardType: TextInputType.number
             )
          ),
          
        ]
      )
    ],
  );
  @override
  Widget build(BuildContext context)
  {
    return new Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
         bodyData(),
         new RaisedButton(
               child: new Text('Total!'),
               onPressed: (){onPressed();},
             ),
        new Text(sum.toString(),textAlign: TextAlign.center,style: new TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),)
        
      ],
    )
      
    );
  }
}



// padding: new EdgeInsets.all(30.0),
//       child: Column(
//         children:[
//           new Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               new Text("Item Name"),
//               new Text("L"),
//               new Text("ml"),
//               new Text("Rs")
//             ]
//           ),
//            new Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             new Text("நல்லெண்ணெய்"),
//             new Radio(
//               value: 0,groupValue: _selectedRadio,onChanged: (int value){onChanged(value);},
//             ),
//             new Flexible(
//              child: new TextField(
//               onChanged: (String value){onChange(value);},
//             )),
//             new RaisedButton(
//               child: new Text('click me yay!'),
//               onPressed: (){onPressed();},
//             )
            
//           ],
//         ),
        
//         ]
//     )