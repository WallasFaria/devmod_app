import 'package:flutter/material.dart';

class MemberCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      borderOnForeground: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                radius: 25,
                child: ClipRRect(
                  child: Image.asset('assets/mock/member.jpg', width: 50),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Nome do Membro',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(4)),
                    Text('Profissao'),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.indeterminate_check_box,
                  color: Theme.of(context).disabledColor,
                ),
                Padding(padding: EdgeInsets.all(8)),
                Icon(
                  Icons.assessment,
                  color: Theme.of(context).disabledColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
