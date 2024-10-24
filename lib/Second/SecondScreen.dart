import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class SecondScreen extends StatelessWidget
{
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children:
            [
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 40.0,start: 40.0,end: 40.0,bottom: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children:
                  [
                    SvgPicture.asset(
                      'assets/iconImages/newicon.svg',
                      height: 45,
                      width: 45,
                      color: Colors.black,
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsetsDirectional.only(start: 16),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search here ...',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: InputBorder.none,
                            suffixIcon: const Icon(Icons.search,color: Colors.white,size: 33.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  const [
                    Expanded(
                      child: Text(
                        'Hello, Kareem !',
                        style: TextStyle(
                          fontFamily: 'Love',
                          // fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),),
                    ),
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage('assets/images/person.jpg'),
                    ),

                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20.0,),
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor('#f4c01e'),
                      borderRadius: BorderRadius.circular(10.0,),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10.0,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children:
                                const [
                                  Expanded(child: Text('Special Request?',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.black,),)),
                                  Icon(Icons.close),
                                ],
                              ),
                              const Text('No Problem!',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500,color: Colors.black,),),

                            ],
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: const Padding(
                              padding: EdgeInsets.only(left: 50), // Adjust the padding as needed
                              child: Text('Name'),
                            ),
                            hintStyle: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: const Padding(
                              padding: EdgeInsets.only(left: 50), // Adjust the padding as needed
                              child: Text('Email'),
                            ),
                            hintStyle: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: const Padding(
                              padding: EdgeInsets.only(left: 50), // Adjust the padding as needed
                              child: Text('Phone Number'),
                            ),
                            hintStyle: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: const Padding(
                              padding: EdgeInsets.only(left: 50), // Adjust the padding as needed
                              child: Text('Category'),
                            ),
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black,size: 22.0),

                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            label: const Padding(
                              padding: EdgeInsets.only(left: 50), // Adjust the padding as needed
                              child: Text('Location'),
                            ),
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            suffixIcon: const Icon(Icons.keyboard_arrow_down_rounded,color: Colors.black,size: 25.0),

                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 10.0),
                          child: Text('Notes'),
                        ),
                        Container(
                          height: 80.0,
                          margin: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 4),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),

                        Center(
                          child: Container(
                            margin: const EdgeInsetsDirectional.only(top: 10.0),
                            width: 180,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30.0,),
                            ),
                            child:MaterialButton(onPressed: (){},child: const Text('Send',style: TextStyle(color: Colors.white,fontSize: 22.0),),) ,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
