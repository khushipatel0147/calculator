import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  String orgValue = "";
  dynamic fnlValue = "";
  dynamic est = 0;
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  child: Text(
                    "$orgValue",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 15),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "$fnlValue",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 35),
                  ),
                ),
              ),
              height: 100,
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      orgValue = "";
                      fnlValue = "";
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.orange,
                    ),
                    child: Center(
                      child: Text(
                        "AC",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        orgValue = orgValue + "%";
                      });
                    },
                    child: box("%")),
                InkWell(
                    onTap: () {
                      setState(() {
                        orgValue = orgValue + "/";
                      });
                    },
                    child: box1("/")),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "7";
                              });
                            },
                            child: box("7")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "4";
                              });
                            },
                            child: box("4")),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "1";
                              });
                            },
                            child: box("1")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "00";
                              });
                            },
                            child: box("00")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "8";
                              });
                            },
                            child: box("8")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "5";
                              });
                            },
                            child: box("5")),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "2";
                              });
                            },
                            child: box("2")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "0";
                              });
                            },
                            child: box("0")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "9";
                              });
                            },
                            child: box("9")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "6";
                              });
                            },
                            child: box("6")),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "3";
                              });
                            },
                            child: box("3")),
                        InkWell(onTap: () {}, child: box(".")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "*";
                              });
                            },
                            child: box1("*")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "-";
                              });
                            },
                            child: box1("-")),
                        InkWell(
                            onTap: () {
                              setState(() {
                                orgValue = orgValue + "+";
                              });
                            },
                            child: box1("+")),
                        InkWell(onTap: () {
                          String frist ="", last = "";
                          int n=0;
                          for (int i=0;i<orgValue.length;i++)
                          {
                            if (orgValue[i]!="+" && orgValue[i]!="-" && orgValue[i]!="*" && orgValue[i]!="/" && orgValue[i]!="%")
                            {
                              frist=frist+orgValue[i];
                            }else{
                              n=i;
                              break;
                            }
                          }
                          for(int j=n+1;j<orgValue.length;j++)
                          {
                            last=last+orgValue[j];
                          }
                          switch(orgValue[n])
                          {
                            case "+":
                              {
                                setState(() {
                                  fnlValue=int.parse(frist)+int.parse(last);
                                });
                                break;
                              }
                            case "*":
                              {
                                int a=int.parse(frist);
                                int b=int.parse(last);
                                setState(() {
                                  fnlValue=a*b;
                                });
                                break;
                              }
                            case "-":
                              {
                                setState(() {
                                  fnlValue=int.parse(frist)-int.parse(last);
                                });
                                break;
                              }
                            case "/":
                              {
                                int a=int.parse(frist);
                                int b=int.parse(last);
                                setState(() {
                                  fnlValue=a/b;
                                });
                                break;
                              }
                            case "%":
                              {
                                int a=int.parse(frist);
                                int b=int.parse(last);
                                setState(() {
                                  fnlValue=a*b/100;
                                });
                                break;
                              }
                          }
                        }, child: Container(
                          height: 70,width: 70,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Text(
                              "=",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget box(String number) {
    return Container(
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          "$number",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 20,
              color: Colors.black
          ),
        ),
      ),
    );
  }
  Widget box1(String no) {
    return Container(
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          "$no",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 20,
              color: Colors.orange
          ),
        ),
      ),
    );
  }

}