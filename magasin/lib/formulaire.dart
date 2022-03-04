import 'package:flutter/material.dart';
import 'animation.dart';


class formulaire extends StatelessWidget {

  Widget description =Container(
    padding: const EdgeInsets.all(8),
    child: Text(
      'veuillez remplir ces cases', 
      softWrap:true,
       style: TextStyle(color: Colors.red),
      
      ),
      
      
  );

  Widget titleSection=SingleChildScrollView(
        child: Container(  
          padding: EdgeInsets.symmetric (vertical: 50.0 ,horizontal: 30.0),
          child: Form( 
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                   decoration: InputDecoration(
                    labelText: 'Login',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 40.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: 'Mail',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 40.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: 'Téléphone',
                    border: OutlineInputBorder()
                  ),
                ),
                //SizedBox(height: 40.0,),
            
                 ],
            ) ,
          ),


        ),
        
      );

  Widget buttonsection= Container(
          padding: const EdgeInsets.all(8),
       
        child:Row(
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
                    'VALIDER',
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
                    'ANNULER',
                    style: TextStyle(color: Colors.white),
             ) ),
          ],
        )
       
       );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bienvenue dans store',
        style:TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20
        ),
        
        
      ),
      centerTitle: true,
      ),
      
      body: ListView(
        children: [
          animation(
            delay: 1000,
            child:IconButton( 
                icon: Icon(Icons.store_mall_directory),
                iconSize: 150,
                color: Colors.blue,
                onPressed: () {},
                ),
                
          ),
          description,
          
          // Image.asset(
          //   'assets/Magasin.jpg',
          //   width: 100,
          //   height: 140,
          //   fit: BoxFit.cover,

          // ),

        titleSection,
        buttonsection,
        ],)
        
      
      // body: Center(
      //   child: IconButton(
      //   icon: Icon(Icons.store_mall_directory),
      //     iconSize: 300,
      //     onPressed: () {},
      //     ) ,
  
        
      
      //     ),
      
    );
  }  
  
                 

}
