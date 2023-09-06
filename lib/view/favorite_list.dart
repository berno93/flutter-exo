import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firstbd233/controller/firebase_helper.dart';
import 'package:firstbd233/model/my_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firstbd233/constante/constant.dart';

class FavoritesList extends StatefulWidget {
  const FavoritesList({super.key});


  @override
  State<FavoritesList> createState() => _FavoritesListState();
}

class _FavoritesListState extends State<FavoritesList> {

  showDetails(MyUser user){
    showDialog(
        context: context,
        builder: (context){
          return CupertinoAlertDialog(
            title: Text('Détails'),
            content: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(user.avatar!),
                ),
                Text(user.fullName),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text("Back")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseHelper().cloud_users.snapshots(),
        builder: (context,snap){
          if(snap.data == null){
            return Center(child: Text("Aucun Favoris"),);
          }else {
            List documents = snap.data!.docs;
            return ListView.builder(
                itemCount: documents.length,
                itemBuilder: (context,index){
                  MyUser users = MyUser.bdd(documents[index]);
                  if(users.favorite) {
                    return Card(
                      elevation: 5,
                      color: Colors.purple,
                      child: ListTile(
                        onTap: (){
                          showDetails(users);
                        },
                        leading:
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(users.avatar!),
                          ),

                        title: Text(users.fullName),
                        subtitle: Text(users.email),
                      ),
                    );
                  }
                }
            );
          }
        }
    );
  }
}