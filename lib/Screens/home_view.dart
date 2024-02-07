import 'package:flutter/material.dart';
import 'package:tuneapp/constants.dart';
import '../Widgets/custom_container_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff252f37),
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const TuneListView(),
    );
  }
}

class TuneListView extends StatelessWidget {
  const TuneListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: tuneModels.length,
            itemBuilder: ((context, index) {
              return TuneContainer(tune: tuneModels[index]);
            }),
          ),
        ),
      ],
    );
  }
}










// to know the all height of the current screen 
//use the command -> MediaQuery.of(context).size.height 
// to make the height odf the screen dynamic and changed for all screens 
// we use Expanded widget 
// Expanded (
// child: .......
// flex : // to make one screen double or trible of another screen 
// 
// )
// Expanded Widget بتجي جوا ال 
// Row or Column Widget 
// اي حاجه تاني لازم Expanded تكون فوقها 