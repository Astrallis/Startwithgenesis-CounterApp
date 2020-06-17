import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'store/counter/counter.dart';

class CounterApp extends StatelessWidget {
  Counter _counter = new Counter();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 50.0,
            right: 50.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: _counter.decrement,
                    child: Icon(Icons.remove),
                  ),
                  Observer(
                    builder: (context) => Text(
                      "${_counter.count}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: _counter.increment,
                    child: Icon(Icons.add),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Basic counter app",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
