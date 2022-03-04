import 'package:flutter/material.dart';
const d_red = const Color(0xFEE13460);

class connexion extends StatefulWidget {
  const connexion({ Key? key }) : super(key: key);

  @override
  State<connexion> createState() => _connexionState();
}

class _connexionState extends State<connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:d_red,
      appBar: AppBar(
        title: Text(
          'Store management',
        style:TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20
        ),
        
        
      ),
      centerTitle: true,
      ),

      body: Center(
          //padding: const EdgeInsets.all(8),
          child:Form(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blue,
                  onPressed: (){},
            child: Text( 
                    'Gestion Articles',
                    style: TextStyle(color: Colors.white),
                  ),
                  

            
            ),
            RaisedButton(
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blue,
                  onPressed: (){},
            child: Text( 
                    'Gestion inventaires',
                    style: TextStyle(color: Colors.white),
             ) ),
                
              ],

            ),
            )
       
        
          
          
        
       
       ),
      
    );
  }
}