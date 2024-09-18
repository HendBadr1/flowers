import 'package:flowers/core/utils/colors.dart';
import 'package:flowers/core/utils/fonts.dart';
import 'package:flowers/core/utils/images.dart';
import 'package:flowers/featuers/home/views/widgets/banner.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Image.asset(AppImages.appbar,width: 200,),
        actions: [
         IconButton(onPressed: (){}, icon:Icon (Icons.shopping_cart,) )
        ],




      ),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: Icon(Icons.shopping_cart,),
              title: Text("Cart"),
            )
          ],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: BannerScreen(),
            )
          ],


        ),
      )




    );
  }
}
