import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/Destinaition.dart';
import 'package:travel_app/Hotel.dart';

class hotelScreen extends StatefulWidget {
  final Destination des;
  hotelScreen({
    this.des,
  }
      );

  @override
  _cityScreenState createState() => _cityScreenState();
}

class _cityScreenState extends State<hotelScreen> {
  Text stars(int rating){
    String sta="";
    for(int i=0;i<rating;i++)
    {
      sta+="⭐";
    }
    sta.trim();
    return Text(sta);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children:<Widget> [
            Stack(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 6.0,
                              offset: Offset(0.0, 2.0)
                          )
                        ]
                    ),
                    child: Hero(
                      tag: widget.des.image
                      ,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image(image: AssetImage(widget.des.hotels1[0].image),fit: BoxFit.cover,)),
                    )
                )
                ,Positioned(
                  left: 10.0,
                  top: 10.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                          children:<Widget> [
                            IconButton(
                              icon: Icon(Icons.arrow_back,size: 30.0,),
                              color: Colors.black,
                              onPressed: () => Navigator.pop(context),
                            ),
                            Row(
                                children: [
                                  Icon(FontAwesomeIcons.search,size: 20.0,color: Colors.black38),
                                  Icon(FontAwesomeIcons.wifi,size: 20.0,color: Colors.black38),
                                ]

                            )
                          ],
                        ),
                      ]),
                )
                ,
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.des.country,style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600
                          ,letterSpacing: 1.2)),
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.locationArrow,size: 10.0,),
                          SizedBox(width: 5.0,),
                          Text(widget.des.city,style: TextStyle(
                              color: Colors.grey,
                              fontSize: 19.0,
                              fontWeight: FontWeight.w600
                              ,letterSpacing: 1.2)),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
            ,
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context,int index){
                  Hotel1 hote=widget.des.hotels1[index];
                  return
                    Stack(
                        children:<Widget> [
                          Container(
                            margin: EdgeInsets.only(left: 40.0,top:5.0,right: 20.0,bottom: 5.0),
                            height: 210.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(100.0, 20.0, 5.0, 20.0),
                              child: Column(
                                children:<Widget> [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start
                                    ,
                                    children:<Widget> [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0),
                                        child: Container(
                                          width: 120.0,
                                          child: Text("${hote.name}",style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w600
                                              ,letterSpacing: 1.2)),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text("${hote.price} \$ ",style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w600
                                              ,letterSpacing: 1.2)),
                                          Text("/per night ",style: TextStyle(
                                            color: Colors.grey,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w600
                                              ,letterSpacing: 1.2),),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20.0,),
                                  Container(
                                    child:
                                    Column(
                                              children: [
                                                hote.feathers[0],
                                                hote.feathers[1],
                                                hote.feathers[2],
                                              ],
                                           ),
                                         )
                                 ],
                                  )
                                  )
                          ),
                          Positioned(
                            left: 5.0,
                            top:15.0,
                            bottom: 15.0 ,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(image: AssetImage(hote.image),
                                width:110.0 ,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ]
                    );
                },
                itemCount: widget.des.activ.length,
              ),
            )
          ],
        )
    );
  }
}
