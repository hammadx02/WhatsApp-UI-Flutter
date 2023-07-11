import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
          centerTitle: false,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.groups),
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
            ],
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.camera_alt),
            ),
            const SizedBox(
              height: 10,
            ),
            const Icon(Icons.search),
            const SizedBox(
              height: 10,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  child: Text('New Broadcast'),
                ),
                const PopupMenuItem(
                  child: Text('Linked Devices'),
                ),
                const PopupMenuItem(
                  child: Text('Setting'),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            //code for community tab
            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 0.5, top: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(
                    Icons.groups,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
              title: const Text('New community'),
            ),
            //code for chats tab
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1196334767655936000/OWrdsx83_400x400.jpg'),
                  ),
                  title: Text('Hammad Ali'),
                  subtitle: Text('Hi, I\'m a flutter developer'),
                  trailing: Text('2:56 AM'),
                );
              },
            ),
            //code for Status tab
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkNQkHOA-AeMO-G2qS8FLoxiCxanUNcS8GxjVqAg8&s'),
                      backgroundColor: Colors.teal,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 11,
                          child: Padding(
                            padding: EdgeInsets.all(1.7),
                            child: ClipOval(
                              child: CircleAvatar(
                                backgroundColor: Colors.teal,
                                radius: 15,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    title: Text('My status'),
                    subtitle: Text('Tap to add status update'),
                  );
                } else if (index == 1) {
                  return const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Text(
                      'Recent updates',
                      style: TextStyle(color: Colors.grey),
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.teal, width: 3),
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1595290293434-555d42427e84?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),
                      ),
                    ),
                    title: const Text('Hammad Ali'),
                    subtitle: const Text('2 minutes ago'),
                  );
                }
              },
            ),
            //code for calls tab
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.link_outlined,
                        color: Colors.white,
                      ),
                    ),
                    title: Text('Create call link'),
                    subtitle: Text('Share a link for your WhatsApp call'),
                  );
                } else {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwpJEEz6YiJ31lsSsjP9v-7MCYwyJH598W3MmiI9c&s'),
                    ),
                    title: Text('Hammad Ali'),
                    subtitle: Text('2:56 AM'),
                    trailing: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
