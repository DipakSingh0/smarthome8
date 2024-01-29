import 'package:flutter/material.dart';
import 'package:pretty_gauge/pretty_gauge.dart';

void main() => runApp(const Farm());

class Farm extends StatefulWidget {
  const Farm({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Farm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('FARM'),
          ),
          body: Container(
              color: Colors.grey[200],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(children: <Widget>[
                      PrettyGauge(
                        gaugeSize: 175,
                        segments: [
                          GaugeSegment('Low', 20, Colors.red),
                          GaugeSegment('Medium', 40, Colors.orange),
                          GaugeSegment('High', 40, Colors.green),
                        ],
                        currentValue: 60,
                        displayWidget: const Text('Humidity',
                            style: TextStyle(fontSize: 12)),
                      ),
                      const SizedBox(width: 5),
                      PrettyGauge(
                        gaugeSize: 175,
                        segments: [
                          GaugeSegment('Critically Low', 10, Colors.red),
                          GaugeSegment('Low', 20, Colors.orange),
                          GaugeSegment('Medium', 20, Colors.yellow),
                          GaugeSegment('High', 50, Colors.green),
                        ],
                        currentValue: 45,
                        needleColor: Colors.red,
                        showMarkers: true,
                        displayWidget: const Text('Moisture',
                            style: TextStyle(fontSize: 12)),
                      ),
                    ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          
                          child: PrettyGauge(
                            
                            gaugeSize: 175,
                            segments: [
                              GaugeSegment('Low', 20, Colors.blue[200]!),
                              GaugeSegment('Medium', 40, Colors.blue),
                              GaugeSegment('High', 40, Colors.blue[800]!),
                            ],
                            currentValue: 70,
                            displayWidget:
                                const Text('Temp', style: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ],
                    )
                  ])),
        ));
  }
}
