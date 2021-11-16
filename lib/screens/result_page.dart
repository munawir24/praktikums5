import 'package:bmi_calculator_praktikum_k/components/reusable_card.dart';
import 'package:bmi_calculator_praktikum_k/constant.dart';
import 'package:flutter/material.dart';
import '../components/buttom_button.dart';

class ResultPage extends StatelessWidget {
  static const routeName = '/result';
  const ResultPage({this.bmiresult, this.resultText, this.interPretation});

  final String bmiresult;
  final String resultText;
  final String interPretation;

  @override
  Widget build(BuildContext context) {
    final ResultPage resultPage = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Center(
                child: Text(
                  'Hasil Hitung',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        resultPage.resultText,
                        style: kResultTextStyle,
                      ), //text
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        resultPage.bmiresult,
                        style: kBMITextStyle,
                      ), //text
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        resultPage.interPretation,
                        style: kBodyTextStyle,
                      ), //text
                    ),
                  ),
                ],
              ),
            ),
          ),
          ButtomButton(
              buttonText: 'HITUNG ULANG',
              onTap: () {
                Navigator.pushNamed(context, '/');
              })
        ],
      ),
    );
  }
}
