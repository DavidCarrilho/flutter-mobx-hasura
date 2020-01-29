import 'package:app_hasura/app/modules/home/home_controller.dart';
import 'package:app_hasura/app/modules/home/home_module.dart';
import 'package:app_hasura/app/modules/home/widgets/card_produto/card_produto_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = HomeModule.to.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Observer(
        builder: (BuildContext context) {
          return ListView.builder(
            itemCount: homeController.lsitaProdutos.length,
            itemBuilder: (BuildContext context, int index) {
              return CardProdutoWidget(
                nomeProduto: "Produto $index",
                valor: "${10 * index}",
                categoriaProduto: "Categoria $index",
                tipoProduto: "Tipo $index",
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
