import 'package:app_hasura/app/shared/custon_combobox/custon_combobox_widget.dart';
import 'package:app_hasura/app/shared/widgets/label/label_widget.dart';
import 'package:flutter/material.dart';

class AddProdutoPage extends StatefulWidget {
  final String title;
  const AddProdutoPage({Key key, this.title = "Adicionar Produto"})
      : super(key: key);

  @override
  _AddProdutoPageState createState() => _AddProdutoPageState();
}

class _AddProdutoPageState extends State<AddProdutoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: MediaQuery.of(context).size.height - 250,
            right: -50,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.4),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 200,
            right: 30,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 130,
            right: 120,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.2),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  LabelWidget(title: "Descrição"),
                  TextField(
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    decoration: InputDecoration(
                      hintText: "Descrição do Produto",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  SizedBox(height: 20),
                  LabelWidget(
                    title: "Valor:",
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                    decoration: InputDecoration(
                      hintText: "Valor",
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: 5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor)),
                    ),
                  ),
                  SizedBox(height: 20),
                  LabelWidget(
                    title: "Categoria de Produto:",
                  ),
                  CustomComboboxWidget(
                    items: [
                      Model("01", "Brasil"),
                      Model("02", "Belgica"),
                      Model("03", "Belise"),
                      Model("04", "Bunridi"),
                    ],
                    onChange: (item) {
                      print(item.descricao);
                    },
                    itemSelecionado: Model("01", "Brasil"),
                  ),
                  LabelWidget(
                    title: "Tipo de Produto:",
                  ),
                  CustomComboboxWidget(
                    items: [
                      Model("01", "Brasil"),
                      Model("02", "Belgica"),
                      Model("03", "Belise"),
                      Model("04", "Bunridi"),
                    ],
                    onChange: (item) {
                      print(item.descricao);
                    },
                    itemSelecionado: Model("01", "Brasil"),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      padding: const EdgeInsets.all(8),
                      onPressed: () {},
                      child: Text(
                        "Salvar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
