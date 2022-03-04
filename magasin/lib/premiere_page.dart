import 'dart:html';

import 'package:flutter/material.dart';

class premiere_page extends StatefulWidget {
  const premiere_page ({ Key? key }) : super(key: key);

  @override
  _premiere_pageState createState() => _premiere_pageState();
}

class _premiere_pageState extends State<premiere_page> {
 String login ='';
  String password ='';
  final _keyForm =GlobalKey<FormState>();
  @override
  

  late PageController pageController;
  int slideCount=3;
  double activeSlide=0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(_slideListener);

    super.initState();

  }
   @override
  _slideListener(){
    setState(() {
      activeSlide=pageController.page!;
    });
  }

  @override
  void dispose(){
    pageController.removeListener(_slideListener);
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Store Management',
        style:TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20
        ),
        
        
      ),
      centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(
          height: 210,
          child: Stack(children: [
            PageView(
              scrollDirection: Axis.horizontal,
              controller: pageController,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: 
                            AssetImage('assets/images/baka-de-mil-500g.jpg'),
                        ),
                    ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 300,
                    width: 100,
                   // MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: 
                            AssetImage('assets/images/Hef0e7ca8445b4432a44f8b96994afcc8j.jpg'),
                            
                        ),
                    ),
                    ),
                  ),
                  
              ],

            ),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if(activeSlide !=0)
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.4),
                      ),
                      child: IconButton(
                        onPressed: (){
                          pageController.previousPage(
                            duration: Duration(milliseconds: 500), 
                            curve: Curves.easeOut);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color:Colors.white,
                        ),
                      ),
                    )
                    else
                      Container(),
                    if(activeSlide !=(slideCount-1))
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.4),
                      ),
                      child: IconButton(
                        onPressed: (){
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                             curve: Curves.easeOut);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ) 
                    else
                      Container(),
                  ],
                ),
                ),
                )
//nouveau

          ],),
        ),
        







        Container(
          padding: EdgeInsets.symmetric (vertical: 50.0 ,horizontal: 30.0),
          child: Form( 
            key : _keyForm,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                   decoration: InputDecoration(
                    labelText: 'Login',
                    border: OutlineInputBorder()
                  ),
                  onChanged:(val) => login = val ,
                  validator: (val) => 'val'.isEmpty ? 'nul' : 'entrez votre login' ,
                  
                ),
                SizedBox(height: 20.0,),
                 TextFormField(
                   decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder()
                  ),
                  onChanged: (val) =>password = val ,
                  validator: (val) => 'val'.length < 6  ? 'vous deviez fournir un mot de passe d au moins 6 caracteres ' : 'null',
                  

                  obscureText: true,
                ),
                SizedBox(height:20.0),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blue,
                  onPressed: (){
                     if(_keyForm.currentState!.validate()){
                       print('$login et $password');

                     }

                  },
                  child: Text( 
                    'Connexion',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 40),
                Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ RaisedButton(
               shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blueAccent,
                  onPressed: (){},
            child: Text( 
                    'mot de passe oublié',
                    style: TextStyle(color: Colors.white),
             ) ),
          ],
        )
       
                
                //SizedBox(height: 40.0,),
            
                 ],
            ) ,
          ),


        ),

        


      ],),
      
    );
  }
}