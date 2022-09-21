import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopPart extends StatelessWidget {
  const TopPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Text('Explore',
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),),
              Text('Collections',
                  style: GoogleFonts.bebasNeue(
                      fontSize: 60
                  )),
            ],
          ),

          //search box
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white70
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.search,size: 30,),
            ),
          )
        ],
      ),
    );
  }
}
