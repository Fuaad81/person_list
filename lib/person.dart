import 'package:flutter/material.dart';

class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 115, 164, 187),
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(backgroundImage: AssetImage('image/man.jpg',),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 10),
                child: Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 5),
                        child: SizedBox(
                          width: 180,
                          height: 40,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Search..',
                              
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,bottom: 25),
                child: Container( 
                  width: 25,
                  height: 25,
                  child: Image.asset('image/notification.png'),
                ),
              )
          
            ],
            
          ),
        ),
        
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context,Int){
                 return Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                   child: Container(
                      width: 100,
                      height: 130,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Container(
                                  width: 80,
                                  height: 90,
                                  child: Image.asset("image/man_vector.png"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 23),
                                child: Text("Name"),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30,top: 10),
                                child: Text("2+ year experience"),
                              ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 10),
                            child: Text("Fuel leaking"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:40 ,top: 30),
                            child: Container(
                              height: 30,
                              width: 150,
                              child: Center(
                                child: Text("Available",
                                style: TextStyle(color: Colors.white)
                                ),
                              ),
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                              color: Colors.green[400]
                              ),
                            ),
                          )
                            ],
                          ),
                          
                        ],
                      ),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[100],
                      ),
                      
                      
                    ),
                 );
                },
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,bottom: 20),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 50,
                  child: Center(child: Text('Mechanic',style: TextStyle(color: Colors.white),)),
                  decoration: BoxDecoration(
                    
                    color: Colors.green
                  ),
                ),
                Container(
                  width: 150,
                  height: 50,
                  child: Center(child: Text('Request',style: TextStyle(color: Colors.white),)),
                  decoration: BoxDecoration(
                    
                    color: const Color.fromARGB(255, 126, 143, 127)
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      
      
          
    );
  }
}