import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.green,
      child: ListView(
        children:[
          //Header
          Container(
            padding:const EdgeInsets.only(top: 26,bottom:12),
            child: Column(
              children: [
                // User   Profile
                Container(
                  height: 100,
                  width: 100,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://imgs.search.brave.com/oA649JwrInxi5cxFm-5yd_Y4ZntPOcOhonHQOY9cwQs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE5/NDY0MzMxL3Bob3Rv/L3RyZWUtYW5kLXJv/b3QuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPUNXRlZsOWg4/cVVoZ0xEY3EtYkFD/enJQOFJ4dE1oMUQ3/MU91ZEpsX3o5OVE9"
                    ),
                  ),
                ),
                const SizedBox(height:12,),


                Text(
                  "user Name",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height:12,),
              ],
            ),
          ),
          //Body
          Container(
            padding: const EdgeInsets.only(top:1),
            child:Column(
              children: [
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
                  // Home
                ListTile(
                  leading: const Icon(Icons.home, color: Colors.orange),
                  title: const Text(
                    "HOME",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: ()
                    {

                    },
                ),
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
                // My Order
                ListTile(
                  leading: const Icon(Icons.reorder_sharp, color: Colors.orange),
                  title: const Text(
                    "My Order",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: ()
                  {

                  },
                ),
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
                // Track Your Order
                ListTile(
                  leading: const Icon(Icons.map, color: Colors.orange),
                  title: const Text(
                    "Track Your Order",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: ()
                  {

                  },
                ),
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
                // History
                ListTile(
                  leading: const Icon(Icons.access_time_filled, color: Colors.orange),
                  title: const Text(
                    "History",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: ()
                  {

                  },
                ),
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
                // Saerch
                ListTile(
                  leading: const Icon(Icons.search, color: Colors.orange),
                  title: const Text(
                    "Search ",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: ()
                  {

                  },
                ),
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
                // Setting
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.orange),
                  title: const Text(
                    "Setting",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: ()
                  {

                  },
                ),
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
                // My Profile
                ListTile(
                  leading: const Icon(Icons.person, color: Colors.orange),
                  title: const Text(
                    "My Profile",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: ()
                  {

                  },
                ),
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
                // logout
                ListTile(
                  leading: const Icon(Icons.logout, color: Colors.orange),
                  title: const Text(
                    "Log Out",
                    style: TextStyle(color: Colors.orange),
                  ),
                  onTap: ()
                  {

                  },
                ),
                const Divider(
                  height: 10,
                  color: Colors.indigoAccent,
                  thickness: 5,
                ),
              ],
            )
          )
        ],
      ),

    );
  }
}
