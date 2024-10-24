import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: HexColor('#f4c01e'),
      body: Column(
        children:
        [
          Container(
            margin: const EdgeInsetsDirectional.only(top: 1),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:
                [
                  SvgPicture.asset(
                    'assets/iconImages/newicon.svg',
                    height: 45,
                    width: 45,
                    color: Colors.white,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsetsDirectional.only(start: 16),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search here ...',
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          border: InputBorder.none,
                          suffixIcon: const Icon(Icons.search,color: Colors.black,size: 33.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
            height: 80,
            width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: HexColor('#ede49f'),
              ),
            ),
              Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.black.withOpacity(0.9),
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: Text(
                    'Gold Package',
                    style: TextStyle(
                      color: HexColor('#fac423'),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Image(image: AssetImage('assets/images/fl.png')),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: const Image(image: AssetImage('assets/images/img.jpg'),fit: BoxFit.cover,width: 360,height: 200,),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 40.0,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                Text(
                  'Contains:',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 10,top: 10),
                  child: Text(
                    '• 60x60 Ceramic\n• Glc Painting\n• Electricity Build Up\n• Sweedy Wires\n• Cat6 Wire\n• Venus Lights\n• Gypsum Board',
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0,),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children:
                [
                  Container(
                    width: 180,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30.0,),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(top: 5.0),
                    width: 165,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30.0,),
                    ),
                  ),

                ],
              ),
              const Text(
                'CONTACT US',
                style: TextStyle(
                  fontSize: 25,
                  height: 1.5,
                  color: Colors.white,letterSpacing: 0,
                  fontWeight: FontWeight.bold

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}