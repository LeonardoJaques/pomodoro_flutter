import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_flutter/components/Cronometro.dart';
import 'package:pomodoro_flutter/components/EntradaTempo.dart';
import 'package:pomodoro_flutter/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Pomodoro"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Cronometro()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Observer(
                  builder: (_) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          EntradaTempo(
                            titulo: "Trabalho",
                            valor: store.tempoTrabalho,
                            inc: store.iniciado && store.estaTrabalhando()
                                ? null
                                : store.incrementarTempoTrabalho,
                            dec: store.iniciado && store.estaTrabalhando()
                                ? null
                                : store.decrementarTempoTrabalho,
                          ),
                          EntradaTempo(
                            titulo: "Descanso",
                            valor: store.tempoDescanso,
                            inc: store.iniciado && store.estaDescansando()
                                ? null
                                : store.incrementarTempoDescanso,
                            dec: store.iniciado && store.estaDescansando()
                                ? null
                                : store.decrementarTempoDescanso,
                          ),
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }
}
