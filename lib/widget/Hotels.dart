
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Destinaition.dart';
import '../Hotel.dart';
import 'HotelScreen.dart';

class hotels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text("Top Hotels",style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold
                  ,letterSpacing: 1.5)),

              GestureDetector(
                onTap: (){
                  setState() {
                    print("F");
                  };
                },
                child: Text("See All",style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600
                    ,letterSpacing: 1.0
                )
                ),
              )
            ],
          ),
        ),
        Container(
          height: 320.0,
          child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
              Destination dis=Destin[index];
              return
                GestureDetector(
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder:(_) => hotelScreen(
                              des:dis
                  )
                  )
                  ),
                  child: Container(
                    width: 210.0,
                    margin: EdgeInsets.all(15.0),
                    child:
                    Stack(
                      children:<Widget> [
                        Positioned(bottom: 10.0,
                          child: Container(
                            height: 200.0
                            ,width: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child:
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,top: 90.0,right: 10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${dis.country}"
                                      ,style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600
                                          ,letterSpacing: 1.2)),
                                  Text("${dis.city} Hotels"
                                      ,style: TextStyle(
                                          color: Colors.grey
                                      )),
                                ],
                              ),
                            ),

                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black38,
                                    blurRadius: 6.0,
                                    offset: Offset(0.0, 2.0)
                                )
                              ]
                          ),
                          child: Stack(
                            children:<Widget> [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0)
                                ,
                                child: Image(image: AssetImage(dis.hotels1[0].image)
                                  ,height:180.0 ,
                                  width:220.0 ,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
            },
            itemCount: Destin.length,),
        )
      ],
    );
  }
}
