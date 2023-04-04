import 'package:api_calling/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailView extends StatefulWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  int? ind;

  HomeProvider? proTrue;
  HomeProvider? proFalse;

  @override
  Widget build(BuildContext context) {
    ind = ModalRoute.of(context)!.settings.arguments as int;
    proTrue = Provider.of<HomeProvider>(context, listen: true);
    proFalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              // color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("${proTrue!.apiList[ind!].image}"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name :- ${proTrue!.apiList[ind!].title}"),
                        // SizedBox(height:,),
                        Text("Price :- ${proTrue!.apiList[ind!].price}"),
                        Text("Rating :- ${proTrue!.apiList[ind!].rating!.rate}"),
                        Text("Description :- ${proTrue!.apiList[ind!].description}"),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
