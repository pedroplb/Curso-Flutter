import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {

  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Sobre a empresa"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body:SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset("images/detalhe_empresa.png"),
                  Text(
                      "Sobre a empresa",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepOrangeAccent,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
            ),
            Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ullamcorper libero nisl, eget lobortis velit consequat vel. Nunc eget ligula posuere, pharetra leo ut, eleifend risus. Donec non velit quis neque convallis finibus. Sed tincidunt eget magna iaculis congue. Sed convallis porta eros mollis finibus. Vivamus hendrerit metus faucibus ligula accumsan congue. Vestibulum consequat faucibus sapien vitae egestas. Aliquam quis sollicitudin lectus, in posuere ante. Curabitur et libero non odio ultrices vehicula quis ut turpis. Curabitur auctor velit nibh, eu sagittis velit pulvinar et.ras aliquam bibendum mauris, in fringilla magna congue sed. Phasellus et nulla pretium, egestas risus nec, consectetur est. Curabitur id velit nunc. Phasellus pulvinar est mauris, quis dictum libero luctus eu. In sit amet velit ut ante ultrices venenatis non laoreet augue. Praesent at lorem eu nibh dignissim facilisis ut sed lectus. Morbi mauris diam, interdum ac nibh nec, tristique faucibus elit. Praesent libero tellus, finibus non fermentum a, pellentesque a risus. Nulla luctus justo quam, quis tincidunt felis tempor dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam a volutpat diam.Maecenas pellentesque quis arcu vel tempus. Fusce non placerat sapien. Suspendisse et dignissim sapien, quis pulvinar nisl. Nullam eu velit eget ipsum pellentesque tincidunt eu vel magna. Aliquam vitae tristique felis, a egestas enim. Nunc varius purus eu justo egestas fringilla. Vivamus tincidunt varius consequat.Nunc malesuada diam in leo euismod commodo. Cras hendrerit sodales odio eu cursus. Aenean nec risus nec nisl pharetra placerat non sit amet mi. Nullam elit lectus, aliquam nec ultricies a, aliquam eu enim. Curabitur eu leo commodo eros tincidunt lacinia. Nunc gravida, est vel imperdiet bibendum, nisl quam cursus urna, sit amet suscipit eros velit ut risus. Curabitur id sapien at lorem hendrerit finibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In augue nunc, pretium id dignissim vel, porta ac neque. Quisque semper tristique nulla ac ornare. Phasellus viverra placerat augue, a scelerisque diam maximus tempor.Etiam hendrerit dui at ex vestibulum, sed condimentum justo blandit. Morbi scelerisque, lacus id malesuada placerat, ipsum magna pulvinar mi, dictum viverra arcu neque ut odio. Fusce scelerisque purus eu auctor luctus. Aliquam risus urna, pretium et eros non, hendrerit efficitur enim. Aliquam efficitur ex ac dui placerat, sed placerat ligula faucibus. Vestibulum blandit orci purus, sit amet elementum magna faucibus vitae. Duis sit amet arcu in massa lacinia cursus. Proin iaculis ex orci. Integer consectetur neque ac urna lacinia, at efficitur libero luctus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ullamcorper libero nisl, eget lobortis velit consequat vel. Nunc eget ligula posuere, pharetra leo ut, eleifend risus. Donec non velit quis neque convallis finibus. Sed tincidunt eget magna iaculis congue. Sed convallis porta eros mollis finibus. Vivamus hendrerit metus faucibus ligula accumsan congue. Vestibulum consequat faucibus sapien vitae egestas. Aliquam quis sollicitudin lectus, in posuere ante. Curabitur et libero non odio ultrices vehicula quis ut turpis. Curabitur auctor velit nibh, eu sagittis velit pulvinar et.ras aliquam bibendum mauris, in fringilla magna congue sed. Phasellus et nulla pretium, egestas risus nec, consectetur est. Curabitur id velit nunc. Phasellus pulvinar est mauris, quis dictum libero luctus eu. In sit amet velit ut ante ultrices venenatis non laoreet augue. Praesent at lorem eu nibh dignissim facilisis ut sed lectus. Morbi mauris diam, interdum ac nibh nec, tristique faucibus elit. Praesent libero tellus, finibus non fermentum a, pellentesque a risus. Nulla luctus justo quam, quis tincidunt felis tempor dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam a volutpat diam.Maecenas pellentesque quis arcu vel tempus. Fusce non placerat sapien. Suspendisse et dignissim sapien, quis pulvinar nisl. Nullam eu velit eget ipsum pellentesque tincidunt eu vel magna. Aliquam vitae tristique felis, a egestas enim. Nunc varius purus eu justo egestas fringilla. Vivamus tincidunt varius consequat.Nunc malesuada diam in leo euismod commodo. Cras hendrerit sodales odio eu cursus. Aenean nec risus nec nisl pharetra placerat non sit amet mi. Nullam elit lectus, aliquam nec ultricies a, aliquam eu enim. Curabitur eu leo commodo eros tincidunt lacinia. Nunc gravida, est vel imperdiet bibendum, nisl quam cursus urna, sit amet suscipit eros velit ut risus. Curabitur id sapien at lorem hendrerit finibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In augue nunc, pretium id dignissim vel, porta ac neque. Quisque semper tristique nulla ac ornare. Phasellus viverra placerat augue, a scelerisque diam maximus tempor.Etiam hendrerit dui at ex vestibulum, sed condimentum justo blandit. Morbi scelerisque, lacus id malesuada placerat, ipsum magna pulvinar mi, dictum viverra arcu neque ut odio. Fusce scelerisque purus eu auctor luctus. Aliquam risus urna, pretium et eros non, hendrerit efficitur enim. Aliquam efficitur ex ac dui placerat, sed placerat ligula faucibus. Vestibulum blandit orci purus, sit amet elementum magna faucibus vitae. Duis sit amet arcu in massa lacinia cursus. Proin iaculis ex orci. Integer consectetur neque ac urna lacinia, at efficitur libero luctus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ullamcorper libero nisl, eget lobortis velit consequat vel. Nunc eget ligula posuere, pharetra leo ut, eleifend risus. Donec non velit quis neque convallis finibus. Sed tincidunt eget magna iaculis congue. Sed convallis porta eros mollis finibus. Vivamus hendrerit metus faucibus ligula accumsan congue. Vestibulum consequat faucibus sapien vitae egestas. Aliquam quis sollicitudin lectus, in posuere ante. Curabitur et libero non odio ultrices vehicula quis ut turpis. Curabitur auctor velit nibh, eu sagittis velit pulvinar et.ras aliquam bibendum mauris, in fringilla magna congue sed. Phasellus et nulla pretium, egestas risus nec, consectetur est. Curabitur id velit nunc. Phasellus pulvinar est mauris, quis dictum libero luctus eu. In sit amet velit ut ante ultrices venenatis non laoreet augue. Praesent at lorem eu nibh dignissim facilisis ut sed lectus. Morbi mauris diam, interdum ac nibh nec, tristique faucibus elit. Praesent libero tellus, finibus non fermentum a, pellentesque a risus. Nulla luctus justo quam, quis tincidunt felis tempor dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam a volutpat diam.Maecenas pellentesque quis arcu vel tempus. Fusce non placerat sapien. Suspendisse et dignissim sapien, quis pulvinar nisl. Nullam eu velit eget ipsum pellentesque tincidunt eu vel magna. Aliquam vitae tristique felis, a egestas enim. Nunc varius purus eu justo egestas fringilla. Vivamus tincidunt varius consequat.Nunc malesuada diam in leo euismod commodo. Cras hendrerit sodales odio eu cursus. Aenean nec risus nec nisl pharetra placerat non sit amet mi. Nullam elit lectus, aliquam nec ultricies a, aliquam eu enim. Curabitur eu leo commodo eros tincidunt lacinia. Nunc gravida, est vel imperdiet bibendum, nisl quam cursus urna, sit amet suscipit eros velit ut risus. Curabitur id sapien at lorem hendrerit finibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In augue nunc, pretium id dignissim vel, porta ac neque. Quisque semper tristique nulla ac ornare. Phasellus viverra placerat augue, a scelerisque diam maximus tempor.Etiam hendrerit dui at ex vestibulum, sed condimentum justo blandit. Morbi scelerisque, lacus id malesuada placerat, ipsum magna pulvinar mi, dictum viverra arcu neque ut odio. Fusce scelerisque purus eu auctor luctus. Aliquam risus urna, pretium et eros non, hendrerit efficitur enim. Aliquam efficitur ex ac dui placerat, sed placerat ligula faucibus. Vestibulum blandit orci purus, sit amet elementum magna faucibus vitae. Duis sit amet arcu in massa lacinia cursus. Proin iaculis ex orci. Integer consectetur neque ac urna lacinia, at efficitur libero luctus.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
