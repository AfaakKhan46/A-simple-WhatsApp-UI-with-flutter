import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Text('Chats'),
                  ),
                  Tab(
                    child: Text('Status'),
                  ),
                  Tab(
                    child: Text('Calls'),
                  ),

                ]
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                    itemBuilder: (context,) => const [
                      PopupMenuItem(
                        value: '1',
                        child: Text('New Group'),
                      ),
                      PopupMenuItem(
                        value: '2',
                        child: Text('Setting'),
                      ),
                      PopupMenuItem(
                        value: '3',
                        child: Text('Logout'),
                      )

                ]
              ),
              SizedBox(width: 10,),

            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder (
                itemCount: 100,
                  itemBuilder: (context, Index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://www.pexels.com/photo/man-wearing-white-crew-neck-vans-top-and-blue-denim-button-up-jacket-1040881/'),
                      ),
                      title: Text('Afaq Khan'),
                      subtitle: Text('how was the day'),
                      trailing: Text('02:30 PM'),
                    );
                  }
              ),
              ListView.builder (
                  itemCount: 100,
                  itemBuilder: (context, Index){
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 4,
                          )
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage('https://www.pexels.com/photo/man-wearing-white-crew-neck-vans-top-and-blue-denim-button-up-jacket-1040881/'),
                        ),
                      ),
                      title: Text('Afaq Khan'),
                      subtitle: Text('19 minutes ago'),

                    );
                  }
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, Index){
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage('https://www.pexels.com/photo/man-wearing-white-crew-neck-vans-top-and-blue-denim-button-up-jacket-1040881/'),
                      ),
                      title: Text('Afaq Khan'),
                      subtitle: Text('You Missed Call'),
                      trailing: Icon(Icons.phone),
                    );
                  }
              ),
            ]
          ),

        )
    );
  }
}
