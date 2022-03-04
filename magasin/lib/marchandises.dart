import 'package:flutter/material.dart';

class marchandises extends StatefulWidget {
  const marchandises({ Key? key }) : super(key: key);

  @override
  State<marchandises> createState() => _marchandisesState();
}

class _marchandisesState extends State<marchandises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gestion stocks',
        style:TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20
        ),
          ),
          centerTitle: true,    
      ),

      body:ListView(children: [
          
        SingleChildScrollView(
        child: Container(  
          padding: EdgeInsets.symmetric (vertical: 6.0 ,horizontal: 3.0),
          child: Form( 
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                   decoration: InputDecoration(
                    labelText: 'code article',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 8.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: 'designation',
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 8.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: 'categorie',
                    border: OutlineInputBorder()
                  ),
                ),

                 SizedBox(height: 8.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: 'prix_unitaire',
                    border: OutlineInputBorder()
                  ),
                ),
                 SizedBox(height: 8.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: 'nom_fournisseur',
                    border: OutlineInputBorder()
                  ),
                ),
                 SizedBox(height: 8.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: "date de livraison",
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 8.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: "date de péremption",
                    border: OutlineInputBorder()
                  ),
                ),
                //SizedBox(height: 40.0,),
            
                 ],
            ) ,
          ),


        ),
        
      ),
      SizedBox(height: 20),
      Container(
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
                    'AJOUTER',
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
                    'MODIFIER',
                    style: TextStyle(color: Colors.white),
             ) ),
            
          ],
        )
       
       ),
    SizedBox(height: 20),
       Container(
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
                    'AFFICHER',
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
                    'AJUSTER QUANTITE',
                    style: TextStyle(color: Colors.white),
             ) ),
 

      ],
      ),
      )

       ] ),
    );
    
   }
}