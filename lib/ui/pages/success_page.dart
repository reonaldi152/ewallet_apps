import 'package:flutter/material.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key, this.desc});
  final dynamic desc;

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/successful.png'),
            SizedBox(height: 24),
            Text(widget.desc.toString()),
            SizedBox(height: 32),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  backgroundColor: MaterialStatePropertyAll(Color(0xff7176EC)),
                ),
                onPressed: () {},
                child: Text("Selanjutnya"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
