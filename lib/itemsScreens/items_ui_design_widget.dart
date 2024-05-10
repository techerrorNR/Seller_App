
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seller_app/itemsScreens/items_details_screen.dart';
import 'package:seller_app/models/items.dart';



class ItemsUiDesignWidget extends StatefulWidget
{
  Items? model;
  BuildContext? context;

  ItemsUiDesignWidget({this.model, this.context,});

  @override
  State<ItemsUiDesignWidget> createState() => _ItemsUiDesignWidgetState();
}




class _ItemsUiDesignWidgetState extends State<ItemsUiDesignWidget>
{
  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> ItemsDetailsScreen(
          model: widget.model,
        )));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 7),
        child :Card(
        elevation: 10,
        shadowColor: Colors.black,

        child: Padding(
          padding: const EdgeInsets.all(4),
          child: SizedBox(
            width: double.infinity,  // width: MediaQuery.of(context).size.width,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const SizedBox(height: 2,),

                Text(
                  widget.model!.itemTitle.toString(),
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 3,
                  ),
                ),

                const SizedBox(height: 2,),

                Image.network(
                  widget.model!.thumbnailUrl.toString(),
                  height: 220,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 4,),

                Text(
                  widget.model!.itemInfo.toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}
