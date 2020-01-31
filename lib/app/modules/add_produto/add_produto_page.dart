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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
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
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)),
              ),
            ),
            SizedBox(heigh: 20),
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
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor)),
              ),
            ),
            LabelWidget(
              title: "Categoria de Produto:",
            ),
            LabelWidget(
              title: "Tipo de Produto:",
            )
          ],
        ),
      ),
    );
  }
}
