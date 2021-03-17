import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            SizedBox(
              // esse SizedBox serviu para poder escolher o tamanho da imagem, que é a child desse widget
              width: 128,
              height: 128,
              child: Image.asset("assets/logo.png"),
            ),
            SizedBox(
              // funciona como um margin
              height: 50,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              // funciona como um margin
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true, // para esconder a senha
              decoration: InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            Container(
              // Criando esse container para poder deixar o botao colorido
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                child: Text(
                  'Recuperar Senha',
                  style: TextStyle(
                    color: Colors.black38,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // BoxDecoration para poder fazer a decoração normal e a decoração das bordas
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                gradient: LinearGradient(
                  // LinearGradient para fazer o degrade
                  begin: Alignment.topLeft, //degrade começa no top left
                  end: Alignment.bottomRight, // e termina no bottom right
                  stops: [
                    0.3,
                    1
                  ], // Define quando o degrade começa, numero de parametros é o mesmo numero de cores
                  colors: [
                    Color(0xFFF58524), // cores
                    Color(0xFFF92B7F), // do degrade
                  ],
                ),
              ),
              child: SizedBox.expand(
                // .expand serve para o SizedBox pegar todo o conteudo do Container
                child: FlatButton(
                  child: Row(
                    // Row para os itens ficarem alinhados horizontalmente no Botao
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // serve para dar um espaço entre todos os itens
                    children: <Widget>[
                      Text(
                        'Login',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset("assets/bone.png"),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Login com Facebook',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.asset('assets/fb-icon.png'),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  onPressed: () => {},
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              child: FlatButton(
                child: Text(
                  "Cadastre-se",
                  textAlign: TextAlign.center,
                ),
                onPressed: () => {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
