

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<ScaffoldState> globalKey = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        drawerTheme: DrawerThemeData(scrimColor: Colors.transparent),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        key: globalKey,
        backgroundColor: Color(0xFF171717),

        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){
                        globalKey.currentState!.openDrawer();
                      },
                          icon: const Icon(Icons.menu),
                        color: Colors.white,
                      ),

                      IconButton(onPressed: (){}, icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10,left: 15),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        TextButton(onPressed: (){}, child:
                        const Text("Message",style: TextStyle(
                          color: Colors.white,fontSize: 21
                        ),
                        )
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        TextButton(onPressed: (){}, child: const Text("Online",style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18
                        ),
                        ),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        TextButton(onPressed: (){}, child: const Text(
                          "Group",style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey
                        ),
                        )
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        TextButton(onPressed: (){}, child: Text(
                          "More",style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey
                        ),
                        ))

                      ],
                    ),
                  ),
                )
              ],
            ),

            Positioned(
              top: 140,
                right: 0,
                left: 0,
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Color(0xFF27c1a9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15,right: 15,left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Favorite Contacts",style:
                              TextStyle(color: Colors.white,
                                fontWeight: FontWeight.w700
                              ),
                              ),
                              Icon(Icons.more_horiz,color: Colors.white,)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 105,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              for(int i=0;i<10;i++)
                              Padding(
                                padding: const EdgeInsets.only(right: 15,left: 15,top: 15),
                                child: Column(
                                  children: [

                                    CircleAvatar(
                                      radius: 32,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 29,
                                        backgroundImage: Image.asset("assets/asp.jpeg").image,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Ajeet",style: TextStyle(
                                        color: Colors.white
                                    ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
            ),
            ),
            Positioned(
                top: 310,
                right: 0,
                left: 0,
                child: Container(
                  height: 1000,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40)
                    )
                  ),

                  child: Container(
                    height: 20,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for(int i=0;i<45;i++)
                          Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: Image.asset("assets/asp.jpeg").image,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Kalya",style: TextStyle(
                                      color: Colors.grey
                                    ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("Hello! How are you?",style: TextStyle(
                                      color: Colors.black87
                                    ),)
                                  ],
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      Text("12:35",style: TextStyle(color: Colors.grey),),
                                      SizedBox(height: 6),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(30)
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Text("3",style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12
                                            ),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            ),
            )
          ],
        ),
        drawer: Drawer(
          width: 275,
          backgroundColor: Color(0xFF171717),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40))
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20,right: 20,left: 30),
            child: Column(
              children: [
                 Row(
                    children: [
                      Icon(Icons.arrow_back_ios,color: Colors.white,),
                      SizedBox(width: 56,),
                      Text("Setting",style: TextStyle(
                        color: Colors.white,fontSize: 18
                      ),)
                    ],
                  ),

                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/asp.jpeg"),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Text("Android Boy",style: TextStyle(
                      color: Colors.white,fontSize: 18
                    ),)
                  ],
                ),

                SizedBox(
                  height: 50,
                ),


                MyItem(title: "Account", iconData: Icons.key),
                MyItem(title: "Chat", iconData: Icons.chat),
                MyItem(title: "Data And users", iconData: Icons.verified_user),
                MyItem(title: "Notification", iconData: Icons.notification_add),
                MyItem(title: "Help", iconData: Icons.help),

                Divider(
                  height: 35,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 20,
                ),

                MyItem(title: "Invite a Friend", iconData: Icons.supervised_user_circle_outlined),

                Spacer(),
                MyItem(title: "Logout", iconData: Icons.login_outlined),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


class MyItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  const MyItem({Key? key, required this.title, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: InkWell(
        onTap: (){
          globalKey.currentState!.closeDrawer();
        },
        child: Row(
          children: [
            Icon(iconData,color: Colors.white,),
            SizedBox(width: 40,),
            Text(title,style: TextStyle(
                color: Colors.white,
                fontSize: 16
            ),),

          ],
        ),
      ),
    );
  }
}





