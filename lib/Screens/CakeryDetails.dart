import 'package:flutter/material.dart';
import 'package:flutter_auth/widgets/Navbar_Widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CakeryDetail extends StatefulWidget{
  final String assetPath;
  final String cookieprice;
  final String cookiename;

const CakeryDetail ({
  Key? key,
  required this.assetPath,
  required this.cookieprice,
  required this.cookiename,
}): super(key: key);

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Color(0xFF545D68),
      ),
      onPressed: (){
        Navigator.of(context).pop();
      },
      ),
      title:  const Text(
        'pilihan',
        style: TextStyle(
          fontFamily: 'Schyler-Regular',
          fontSize: 20.0,
          color: Color(0xFF545D68),
        ),
      ),
    ),
    body: ListView(
      children: [
        const SizedBox(height: 15.0),
        const Padding(padding: EdgeInsets.only(left: 20.0),
        child: Text(
          'Kue',
          style: TextStyle(
            fontFamily: 'Schyler-Regular',
            fontSize: 42.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF17532),
          ),
        ),),
        const SizedBox(height: 15.0),
        Padding(padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child:  Hero(tag: assetPath,
        child: Container(
          height: 250,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(assetPath),
            )
          )
        ),),),
        const SizedBox( height: 20.0),
          Center(
            child: Text(
              'Rp $cookieprice',
            style: const TextStyle(
              fontFamily: 'VarelaRound-Reguler',
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFFF17532)
            ),
            ),
          ),
          const SizedBox( height: 20.0),
        Center(
            child: Text(
              cookiename,
            style: const TextStyle(
              fontFamily: 'VarelaRound-Reguler',
              fontSize: 24.0,
              color: Color(0xff575E67),
            ),
            ),
          ),
          const SizedBox(height: 20.0),
          Center( 
            child:SizedBox(
              width:  MediaQuery.of(context).size.width - 50.0,
              child: const Text('Loremipsum dshgdwiafdifqidiywqdiydgdsaidghsgdgsydgysg',
              maxLines: 4,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'VarelaRound-Reguler',
              fontSize: 24.0,
              color: Color(0xFFB4BB9),
              ),),
            ) ,
          ),
          const SizedBox(height: 20.0),
          Center(
            child: Container(
              width: MediaQuery.of(context). size.width - 100.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xfff17532),

              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    //ikon keranjang
                    Icon(
                      FontAwesomeIcons.bucket,
                      size: 30,
                      color: Colors.white70,
                    )
                  ],
                ),
              ),
            ),
          )
      ],
    ),
  );
}
}