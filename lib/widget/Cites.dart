
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/CityScreen.dart';

import '../Destinaition.dart';

class cites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Text("Top Cites",style: TextStyle(
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
          height: 300.0,
          child:
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context,int index){
              Destination dis=Destin[index];
              return
                GestureDetector(
                  onTap: () => Navigator.push(context,MaterialPageRoute(builder:(_) => cityScreen(
                  des: dis,
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
                            height: 120.0
                            ,width: 200.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            child:
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("${dis.activ.length} Activities"
                                      ,style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600
                                          ,letterSpacing: 1.2)),
                                  Text("${dis.describtion}"
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
                              Hero(
                            tag: dis.image
                                ,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0)
                                  ,
                                  child: Image(image: AssetImage(dis.image)
                                    ,height:180.0 ,
                                    width:180.0 ,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10.0,
                                bottom: 10.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(dis.country,style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.w600
                                        ,letterSpacing: 1.2)),
                                    Row(
                                      children: [
                                        Icon(FontAwesomeIcons.locationArrow,size: 10.0,),
                                        SizedBox(width: 5.0,),
                                        Text(dis.city,style: TextStyle(
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
