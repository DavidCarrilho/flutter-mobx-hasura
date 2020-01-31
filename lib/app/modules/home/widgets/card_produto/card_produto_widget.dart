import 'package:flutter/material.dart';

class CardProdutoWidget extends StatelessWidget {
  final String nomeProduto;
  final String categoriaProduto;
  final String tipoProduto;
  final String valor;

  const CardProdutoWidget(
      {Key key,
      @required this.nomeProduto,
      @required this.categoriaProduto,
      @required this.tipoProduto,
      @required this.valor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 10, left: 10, top: 10),
      color: Colors.pink[100],
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 50,
            right: -50,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.4),
            ),
          ),
          Positioned(
            top: 80,
            right: 30,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.3),
            ),
          ),
          Positioned(
            top: 120,
            right: 120,
            child: CircleAvatar(
              radius: 130,
              backgroundColor: Theme.of(context).primaryColor.withOpacity(.2),
            ),
          ),
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(nomeProduto,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                  Text(categoriaProduto,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(tipoProduto,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            )),
                      ),
                      Text("R\$ ${double.parse(valor).toStringAsFixed(2).replaceAll('.', ',')}",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
