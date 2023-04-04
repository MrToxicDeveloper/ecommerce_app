import 'package:api_calling/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Future<void> getData() async {
    await Provider.of<HomeProvider>(context, listen: false).apiCalling();
  }

  @override
  void initState() {
    super.initState();
    // Provider.of<HomeProvider>(context,listen: false).apiCalling();
    getData();
  }

  HomeProvider? proTrue;
  HomeProvider? proFalse;

  @override
  Widget build(BuildContext context) {
    proFalse = Provider.of<HomeProvider>(context, listen: false);
    proTrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ecommerce App"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: proTrue!.apiList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(10),
                    // splashColor: Colors.black,
                    shape: Border.symmetric(
                        horizontal: BorderSide(color: Colors.black54)),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage("${proTrue!.apiList[index].image}"),
                    ),
                    title: Text("${proTrue!.apiList[index].title}"),
                    subtitle: Text("\$ ${proTrue!.apiList[index].price}"),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'detail',arguments: index);
                        }, icon: Icon(Icons.navigate_next)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
