import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const warlock());
}

class warlock extends StatelessWidget {
  const warlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('GÜNÜN FALI'),
          centerTitle: true,
        ),
        body: const FalSayfasi(),
      ),
    );
  }
}

class FalSayfasi extends StatefulWidget {
  const FalSayfasi({Key? key}) : super(key: key);

  @override
  State<FalSayfasi> createState() => _FalSayfasiState();
}

class _FalSayfasiState extends State<FalSayfasi> {
  int index = 1;

  List yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  void sonuc() {
    setState(() {
      index = Random().nextInt(6) + 1;
    });
  }

  void sonuc1() {
    setState(() {
      index = Random().nextInt(5) + 7;
    });
  }

  void sonuc2() {
    setState(() {
      index = Random().nextInt(5) + 12;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/falci.png',
            width: 180,
            height: 250,
            alignment: Alignment.center,
          ),
          Expanded(
            child: TextButton(
              onPressed: sonuc,
              child: const Card(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                color: Colors.white,
                child: ListTile(
                  iconColor: Colors.red,
                  textColor: Colors.red,
                  leading: Icon(
                    Icons.favorite,
                  ),
                  title: Text('AŞK DURUMU '),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
            child: TextButton(
              onPressed: sonuc1,
              child: const Card(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                color: Colors.white,
                child: ListTile(
                  iconColor: Colors.green,
                  textColor: Colors.green,
                  leading: Icon(
                    Icons.shopping_cart,
                  ),
                  title: Text('PARA DURUMU'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
            child: TextButton(
              onPressed: sonuc2,
              child: const Card(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                color: Colors.white,
                child: ListTile(
                  iconColor: Colors.blue,
                  textColor: Colors.blue,
                  leading: Icon(
                    Icons.tag,
                  ),
                  title: Text('GÜNÜN TAVSİYESİ'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Text(
            yanitlar[index - 1],
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}

/*

*/
