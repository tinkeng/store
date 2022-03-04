import 'package:flutter/material.dart';
//import 'package:magasin/connexion.dart';
//import 'package:magasin/formulaire.dart';
import 'package:magasin/marchandises.dart';
//import 'package:magasin/premiere_page.dart';
//import 'package:magasin/marchandises.dart';
//import 'animation.dart';
//import 'formulaire.dart';
//const d_red = const Color(0xFFE97190);
void main() => runApp(magasin());

class magasin extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home:marchandises(),//formulaire()
      //  home:    
      // Scaffold(
      //   backgroundColor:d_red,
      //   appBar: AppBar(
      //     title:Text(
      //     'store management',
        
      //   ) ,
      //   centerTitle: true,
      //   ),
      //   body: Center(
      //     child: animation(
      //       delay: 1000,
      //       child:IconButton( 
      //         icon: Icon(Icons.store_mall_directory),
      //          iconSize: 400,
      //           color: Colors.blue,
      //         onPressed: () {},
      //           ),//Image.asset('assets/index.jpg'), //FlutterLogo(
      // //       //   size: 200,
      //  )
      // //         ),

      //   ),
      // ),
    );
  }
}
 
// class Accueil extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text(
//           'STORE MANAGEMENT'
//         )
//       ),
//       body: Center(
//         child: Image.asset('assets/index.jpg'),
      