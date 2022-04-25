import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Gratidão não é uma pagamento, mas um reconhecimento que se demonstra no dia a dia.",
    "A vida ajuda quem cedo madruga!",
    "Prefiro morrer do que perder a vida!",
    "Não contavam com a minha astúcia!",
  ];

  var _fraseGerada = "Clique abaixo pra gerar uma frase.";

  void gerarFrase() {
    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              // decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("images/logo.png"),
                  Text(
                    _fraseGerada,
                    style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  RaisedButton(
                    onPressed: gerarFrase,
                    child: Text("Clique aqui"),
                    color: Colors.amber,
                  )
                ],
              ),
            )
        ),
      );
  }
}

















// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HomeStateful()
//
//     // home: Scaffold(
//     //   appBar: AppBar(
//     //     title: Padding(
//     //       padding: EdgeInsets.all(16),
//     //       child: Text("Instagram"),
//     //     ),
//     //     backgroundColor: Colors.green,
//     //   ),
//     //   body: Text("Conteúdo principal"),
//     //   bottomNavigationBar: BottomAppBar(
//     //     color: Colors.lightGreen,
//     //     child: Padding(
//     //       padding: EdgeInsets.all(16),
//     //       child: Row(
//     //         children: [
//     //           Text("Texto 1"),
//     //           Text("Texto 2"),
//     //         ],
//     //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     //       ),
//     //     ),
//     //   ),
//     //
//     // ),
//   ));
// }
//
// class HomeStateful extends StatefulWidget {
//   const HomeStateful({Key? key}) : super(key: key);
//
//   @override
//   State<HomeStateful> createState() => _HomeStatefulState();
// }
//
// class _HomeStatefulState extends State<HomeStateful> {
//
//   var _texto = "Hugo Paiva";
//
//   @override
//   Widget build(BuildContext context) {
//
//     print("chamado");
//     return Scaffold(
//       appBar: AppBar(
//         title: Padding(
//           padding: EdgeInsets.all(16),
//           child: Text("Instagram"),
//         ),
//         backgroundColor: Colors.green,
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             RaisedButton(
//                 onPressed: () {
//                   setState(() {
//                     _texto = "Mudou";
//                   });
//                   print("Clicado");
//                 },
//                 color: Colors.amber,
//                 child: Text("Clique aqui")
//             ),
//             Text("Nome: $_texto")
//           ],
//         ),
//       ),
//     );
//
//   }
// }
//
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
