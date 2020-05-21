import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/cupertino.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}





class _HomepageState extends State<Homepage> {

  Map currencyData;
  fetchcurrdata()async{
    http.Response response = await http.get('http://data.fixer.io/api/latest?access_key=4b0a972513fb77515880ef76866dbd4e&format=1');
    setState(() {
      currencyData = json.decode(response.body);
    });

  }

  @override
  void initState() {
    fetchcurrdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FOREX RATES'),
        //actions: <Widget>[
          //IconButton(icon: Icon(Icons.search),onPressed: (){

           // showSearch(context: context, delegate: Search(currencyData));


         // },)
       // ],
      ),
    backgroundColor: Color(0xFF6CA8F1),
    body: currencyData==null?Center(child: CircularProgressIndicator()):ListView(
    children: <Widget>[
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 USD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 USA Dollar in Rupees)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['USD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 EUR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Euro in Rupees)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['EUR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 AED IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 United Arab Emirates\nDirham in Rupees)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['AED']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 AFN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Afghan Afghani\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['AFN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ALL IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Albanian Lek \nin Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ALL']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 AMD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Armenian Dram in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['AMD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ANG IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Netherlands Antillean\n Guilder in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ANG']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 AOA IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Angolan Kwanza\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['AOA']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ARS IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Argentine Peso\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ARS']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 AUD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Australian Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['AUD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 AWG IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Aruban Florin \nin Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['AWG']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 AZN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Azerbaijani Manat\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['AZN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BAM IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bosnia-Herzegovina\n Convertible Mark in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BAM']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BDT IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bangladeshi Taka\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BDT']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BGN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bulgarian \nLev in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BGN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BHD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bahraini Dinar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BHD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BIF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Burundian Franc\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BIF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BMD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bermudan Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BMD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BND IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Brunei Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BND']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BOB IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bolivian Boliviano\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BOB']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BRL IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Brazilian Real\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BRL']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BSD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bahamian Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BSD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BTC IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bitcoin in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BTC']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BTN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Bhutan currency\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BTN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BWP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Botswanan Pula\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BWP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BYN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Belarusian Ruble\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BYN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 BZD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Belize Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['BZD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CAD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Canadian Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CAD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CDF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Congolese Franc\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CDF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CHF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Swiss Franc\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CHF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CLF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Chilean Unit of\n Account (UF) in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CLF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CLP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Chilean Peso\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CLP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CNY IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Chinese Yuan\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CNY']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 COP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Colombian Peso\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['COP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CRC IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Costa Rican\n Colón in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CRC']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CUP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Cuban Peso\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CUP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CVE IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Cape Verdean\n Escudo in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CVE']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 CZK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Czech Koruna in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['CZK']).toStringAsFixed(2))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 DKK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Danish Krone\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['DKK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 DZD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Algerian Dinar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['DZD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 EGP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Egyptian Pound\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['EGP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ETB IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Ethiopian Birr\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ETB']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 FJD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Fijian Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['FJD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 GBP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 British Pound\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['GBP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 GEL IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Georgian Lari\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['GEL']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 GHS IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Ghanaian Cedi\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['GHS']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 GNF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Guinean Franc\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['GNF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 HKD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Hong Kong Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['HKD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 HRK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Croatian Kuna\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['HRK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 HUF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Hungarian Forint\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['HUF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 IDR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Indonesian Rupiah\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['IDR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ILS IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Israeli New Shekel\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ILS']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 IQD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Iraqi Dinar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['IQD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 IRR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Iranian Rial\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['IRR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ISK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Icelandic Króna\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ISK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 JMD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Jamaican Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['JMD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 JOD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Jordanian Dinar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['JOD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 JPY IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Japanese Yen\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['JPY']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 KES IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Kenyan Shilling\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['KES']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 KGS IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Kyrgystani Som\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['KGS']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 KHR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Cambodian riel\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['KHR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 KRW IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 South Korean won\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['KRW']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 KWD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Kuwaiti Dinar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['KWD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 KYD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Cayman Islands Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['KYD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 KZT IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Kazakhstani Tenge\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['KZT']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),

      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 LBP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Lebanese pound \nin Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['LBP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 LKR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Sri Lankan Rupee\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['LKR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 LRD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Liberian Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['LRD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 LSL IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Lesotho loti\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['LSL']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 LYD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Libyan Dinar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['LYD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MAD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Moroccan Dirham\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MAD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MKD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Macedonian Denar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MKD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MMK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Myanmar Kyat\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MMK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MOP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Macanese Pataca\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MOP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MUR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Mauritian Rupee\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MUR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MVR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Maldivian Rufiyaa\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MVR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MWK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Malawian Kwacha\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MWK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MXN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Mexican Peso\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MXN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MYR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Malaysian Ringgit\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MYR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 MZN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Mozambican metical\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['MZN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 NAD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Namibian dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['NAD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 NGN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Nigerian Naira\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['NGN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          Text(' 1 NOK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Norwegian Krone \nin Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['NOK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 NPR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Nepalese Rupee \nin Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['NPR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 NZD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 New Zealand Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['NZD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 OMR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Omani Rial\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['OMR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 PAB IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Panamanian Balboa \nin Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['PAB']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 PEN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Peru Sol\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['PEN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 PGK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Papua New Guinean\n Kina in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['PGK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 PHP IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Philippine Peso\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['PHP']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 PKR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Pakistani Rupee \n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['PKR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 PLN IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Poland złoty\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['PLN']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 PYG IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Paraguayan Guarani\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['PYG']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 QAR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Qatari Rial\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['QAR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 RON IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Romanian Leu\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['RON']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 RSD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Serbian Dinar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['RSD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 RUB IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Russian Ruble\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['RUB']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 RWF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Rwandan franc \nin Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['RWF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 SAR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Saudi Riyal\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['SAR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 SBD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Solomon Islands\n Dollar in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['SBD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 SCR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Seychellois Rupee\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['SCR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 SDG IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Sudanese pound\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['SDG']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 SEK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Swedish Krona\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['SEK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 SGD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Singapore Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['SGD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 SLL IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Sierra Leonean\n Leone in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['SLL']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 SOS IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Somali Shilling\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['SOS']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 THB IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Thai Baht\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['THB']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 TJS IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Tajikistani Somoni\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['TJS']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 TMT IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Turkmenistan manat\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['TMT']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 TND IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Tunisian Dinar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['TND']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 TRY IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Turkish lira\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['TRY']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 TWD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Taiwan New Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['TWD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 TZS IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Tanzanian Shilling\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['TZS']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 UAH IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Ukrainian hryvnia\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['UAH']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 UGX IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Ugandan Shilling\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['UGX']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 UYU IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Uruguayan Peso \nin Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['UYU']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 UZS IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Uzbekistani Som\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['UZS']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 VND IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Vietnamese dong\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['VND']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 XAF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Central African CFA\n franc in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['XAF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 XCD IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 East Caribbean Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['XCD']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 XOF IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 West African CFA\n franc in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['XOF']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 YER IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Yemeni Rial\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['YER']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ZAR IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 South African Rand\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ZAR']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ZMK IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Zambian Kwacha\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ZMK']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),
      Card(
        shadowColor: (Colors.black12),
        color: Colors.black54,
        child: Container(
          height: 130,
          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            children: <Widget>[

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10,),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(' 1 ZWL IN INR ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                        ],
                      ),
                    ),
                    Text('(1 Zimbabwean Dollar\n in Rupee)',style: TextStyle(fontSize: 16,color: Colors.grey[400]),),

                  ],
                ),
              ),
              Expanded(child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('₹'+(double.parse((currencyData['rates']['INR']/currencyData['rates']['ZWL']).toStringAsFixed(4))).toString(),style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 20,
                        color: Colors.greenAccent),),
                  ],
                ),


              ),
              ),

            ],
          ),
        ),

      ),

    ],



    ),
    );
  }
}
