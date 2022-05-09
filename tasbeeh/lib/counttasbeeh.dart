import 'package:flutter/material.dart';
import 'allahhuakber.dart';
import 'subhanallah.dart';
import 'viewalltasbeeh.dart';
class counttasbeeh extends StatelessWidget {
  const counttasbeeh({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Tasbeeh'),
      ),
      body: Column(
    children: [
    Expanded(child: Row(
    children: [
    Expanded(
        child: Card(
        elevation: 50,
        shadowColor: Colors.black,
        color: Colors.greenAccent[100],
        child: SizedBox(
          width: 200,
          height: 310,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green[500],
                  radius: 68,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "data:image/jpeg;base64,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"), //NetworkImage
                    radius: 60,
                  ), //CircleAvatar
                ), //CircleAvatar
                Text(
                    ' Allah Hu Akber'
                ),
                Text(
                    ' the words “Allahu Akbar” simply mean “God is greater.” ",'
                ),
                Text(
                    ' Length=34'
                ),//CircleAvatar
                SizedBox(
                  height: 10,
                ), //SizedBox
                SizedBox(
                  width: 80,
                  child:  ElevatedButton(
                    child: const Text('count Tasbeeh'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const allahhuakber()),
                      );
                    },
                  ), //RaisedButton
                ),

              ],
            ), //Column
          ), //Padding
        ), //SizedBox
      ),
    ),
      Expanded(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 200,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 68,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANoAAADnCAMAAABPJ7iaAAABCFBMVEX///8AAAARdq77+/v5+fnS3+sAbKn29vbz8/MTExPn5+fKysq9vb2enp7u7u6ioqLg4ODZ2dnR0dEoKCiqqqq0tLRDQ0PExMSMjIyYmJjc3NyBgYFYWFhLS0sAcay4uLh4eHg2NjYhISEvLy9gYGALCwttbW18fHwbGxs7OztOTk6RkZFycnJbW1sdHR3i7vEAcrIhfLFXlbx9qssAcqKXvNM5hLJboMPG3+hUlrGryd5al8VHirWMs9Nhnr1onsY2gLhFjcEAX6HO5eqkyNWiwNRpor+71eW62NuArNCuzuI3hK1ip8CpytV9tNGOv9UAaZ4AW7UAYrMAVpigyeaCt8i/1Osge6edzF7ZAAAS80lEQVR4nO1diX/aSLJWIwxC4kZcBnEfBh8YCMQT23EmtkPWmdi7+zab//8/eX1KrQPcKBLOm6dvfhMb0Wqq1NVfVVcXbUmKECFChAgRIkSIECHC/2/IcuA9Bt2h3x7j8WDFkOR40LrJyb17hAMmy4GqJqNHFaRqyKbk/XuUlaQUqBxSXIn7kGMXkoq/h5+MixiPLD4boeUItBZps1+PHvcJPGGZCCPYoUCP8r49+tFMZMxk2rlY9wLzTKbiCsrrc+YKPA8Zm6OoTQhZI2EGwYfl0xpF5xn+X0QS2OPrbST6qAQ180PfcFaI3MYEERBFyHaYGUgiH+7XGoXuksVVE2N9OmpxSeQx+GIQ0buY8QjwjeATFu9RyDO5+xc2YpNHXhdETA5KSq/36M/37zHSuGGgtkMJ8jXE/VijvGfoIsaN+8gh0DbuIyTGvLP/Ta/0GHCs7zMQDTh+DalHf6vIwAdNhMj3Q/BLvggRIkSIECFChAgRIkSIECFChAgRIvyfQPClM79LstFXEv7APfqQIY72w4J8yHJc2mOvPkTEk3KwNTxSMim44ewHwlvlqG1SRI49exQrnfGzycb9+3pj4UqX4HvcWzeZdi5c6fJqh3vVzoiVGcl+Sn3oXrKgJOKVLqL1XOKVXHsrJ4tvvwvWpexTOyNUJLBf7YztvmArXZgVCPWIOERERPHaGed9wqoJGS0ZL8HaGUERcZ/+VBMwSDeDeN+BJVG13YKkFQlXugjKGBesnXFLIgtsGTMqU61L9ZLm3aOUAUZz51SbTu0FwdNdjWXTJPeE2E2ohhT9bICmeS0HgO7ZuF0xTsCx51uZAvpXAaDMVwUdg85uEf0ohu98vQV7xGkAgDluGfii4NUc9KQRKHq8oRkAf1gbgD4/c2tbOuIEeF3E11p4w5RiArUxZZbrAEw9WifhmKSB6rpe7QKQwb+NwCR1yr1zAsDEn2QmfKomy9ncaR7+kgfHOshab2jAQwNJuoAPgG+GUS4B0GuT30F/2OUaFEBqCNq+RDPhN2ZXUsT2MgOp2ODfaHhKlK0g3ercFTkzBMAwWQeA7gnomO/qAKRAyp9o5if4VK2NRIUmU3FOoDw49bzh1DZsKpxLYMTNphHqzxrwIkC6eVNS2KhiUQoScL0Dap43nHWPzadQGMB7Gzb7LOP+xuZraKvD1DAwcfcCFqWhVtxveI5a2uKa9BTemXH45izuDyjsdR1qhvzBW0A9axTboO0eIpD2aF0wnR8anq7HdOwPkWpmd0WAJnM/IGF9IAWqzktZ68lbKJrTaAxA0x6xHOfxjwbWxbRvmYyiq/uDYexm+vyZuxn0dnQoVTDIO940yI8ywLqZ44kp1dNJHgZtN4sQyuVjqmoPDBkXpl2kd0YHpgAV6YyBwa434Otzbyd5EGTdLAJ9EooITZHSfbs/c+CYxRxxqMoZjK+YOaM5mdZ23XpYVCGh16aIDylNVi9AT9/lOg3Tt8GYCw5ZjVkkGkVdKv+i2w4MCrLPTgrJ1cUX2kbdO9xnKHTNX0cciSCQ6OVt6N+NEZJNR6E88OJJDwyg9VKHh1YNvLPrIwP9XXAMly4oQIbzbAA816ROyCgMpSyI4huePeEoNj1vegvU6kg1FRF9RiyQQAsdtUR+VwGweXvoMU6Cl1Ec+WJR06rpNBkjHRmkCkboNxe1OZc0CHXIFAM2No6lQdox9w4MEq+j0Am/zIEkZu1jSOIZZ9tMw3U7WksDs6UBwIB7L+8w0MOChOsoiqjR12MpO+xBXzt0h0i6R9zc5kPiDntCBPIbxVmEyvpg3Gg0aqUUfbwFrKbSRAK7nFkZeATOuUrT9A46vJm/Cz6iXNByv44CmVtkrOB879Dr58S+cqOOO0Aqv2ZgGpczipextY93tQ8HXHylTvgETTrnlbbCQKqVdnWKlmyMV89VvC73iuPCxciaAygvIOZ+8MTs7GphrdeqyFlDiuz5FNA3NHO2V+HUGu7yYJzj1l5dgFUAC/xP0JzLw7nn5THCBEsDqwbod3aT2ITzVGQFlmQv0znnfITrGBINZ/DSRx4Cz6xsiMgwA1QUz82HLOfShlzApWLVRvTVCLgYU2dJLxrud4dcTusXk5IueKXy5Fcy1lLGWoioYMjZFAqAe1RXjWbEeKBr6F29QSwZam+6+fLWxJ3f9LfHsNQRze1i8ZLF8cglcyw3BL0KZckBVs2e1lEA2Q3pQSNH79TNuScltyaA/JwSI205JQaz2A5WLnChYJ3PGctSO9Xr9jGTwFBDzQHnXBpiT4bja+S8q1YUOfCa0kGfEqPhB7sj+Tnm/FybywnHFVmawsAF+4oCekDZlCPcMHCoVYbzsYx0ypv3FruSB4I+JaaBVDtmT5NsnWp8xN7lMuAk5UZoB1kOUTXLMq5Fx/pgjIcpZ95D5x7kFe8dyYBPiamg8HxARo3UpUBZOlyDMz7lRqYUNjv81fMLGurrmEFGjvVBDlSmcAHXY/6vS3ci294Lt6BPiekhliNhAql0QVOCX6/k+KADhSDaCSZ8XK2g0xVQGgyS6sBJ/5rRHMIr1WaJhAEjmkPYsq8R9CkxA9M70Z38fN+w7WBofKyIfFlOQmZHbYdOviJd5yVtfWcr4KTMsXmG8CvedCy7SDnwU2IKWKS8ZO4nn4Fz20osC/gACbYd0h7xaxRzokEgmjlXp72LZo0rfaAL7Qr6x3BOtxBOiVFr4CRPO4dPOF3pTe1T5mIIrBikSWaeaTsKTXdjQnFkrGTJmEwGXDkIWWhnsfurOFQL55QYuvQgtUldoz+153gGXFIAj1Kf7/GMrlMLdd0ZQ8pSp2cMJO6UGByMVdG4Jx0uMJxTYvLU2WBz1ECz17Rn5k65SJFsMVa5feXCrvhfB/1Tiat0KQFo65B6TssT+yLA3ykxrxqxDlg7KMWgkumX7LFg2hZBESfFyWF4zDEGzRjqfAkeHOJzmoGxOe2wTokZnbOmsqRUJhJw1BagGWKl2QagVLGNatpztU0+87hrqPxjyKCmWddCL7RTYng+zEFqB858IaNQjOowNekbzret/fhRZVJKUVcA1wl2pZE5K9gZ8hFZaKfEZHnSqEDP5MryGoCjSKnfB/Z8Tw5Y5U454IA9qMxCPwLpI1vkdhBCPCVG48RWYNSluJIjDU5EGoDwkysJzFxqgQ2WCcfGzom76CvEU2IyHGmk4QiqHB8SIGXMNFscaWKvbhmbJlyhqg3Jbi/CuMpHKIY7YRfiKTE1bhO2AQkkD5yVIiiK4mYXXrTxHHrMImYWbkHdUtzIpUb19rFCP+yQVQgDjg+7QzzVHTaj2ocJr2xs8UofECpqmNqcpIATKaOh59sujgoTUyumRVMNuR1Hug6zNecP6sC+UYGcOh6LkksfJ9BkzBcKhbyatUfSoaBiSV3FWXCXajh1xWeghg4SLVLVj6HQhaJWbeuZ2sAY2pQa4nFETyndMS+GXLRlWEzeQI701KUa5j2eNZFZ8Q89CTnRIzGrFPVOyaYZ0DqViZ5mmnlXfwWHphWo9hCjNFwbKhksB+/KDEfAAvlwIHkjWx1bmoFmWc/V2S7etvAsMAzMB67iKT52ZfL7AD17vlAn76htQa5su5s5ngA3qxxAMzhK7DN0HBbVwNC+6wB5pYqKULmUTtGuGuZMryo1+LhyaIXnpdkByhHqZpxnYF+dcxgfio5xrGXFmnlgN8giaLr8PIJa73LzzI5DVGulWYCYJdlTtObgJg5So0IXIqTENZ5Bw8B30QCIRJ0Wma7Q8bJplip1J5NKJWwGwVDZ2qlBjKpgY2UcMY5Z7gOkmiMSTNljfwN5bfsGRS7FmJH80u3U01o+KVer1Vf2GAJEj/AGevBoAiUJL+PATiN6tBvVjMOe+GikDVl8bDcxnW970uHSV6lDVsagigijradorgpX+qPJcNakIwU06B8c84WfaiU42rZvPhxzYcmobE+ZnB+yKDJvikGmmGPNlQLNNlw/FmwX+QS4jmgH1Qiy+WO65JOae6twfNAd7XMmCpktil2zIcifoeHUuIu8f0YGLJEsHiESFv/XPOfUKRgeMPY3h40unOp2zeoSIXbVYBdtYX+TTJ62OZYoxQ+a25JckGsvQtPEDcoRZnxV4awROvQss7/C6WBidMq2+sEcVQm7bRRYovyHqyDZQhp4lNeECJzetnxukuk2xG5A2xJpIGDrw1kCFM+jFfQIpFyWWB6Nq9wNYX3/3BNqJmOb8foJVq1fR+OQ2144gJdyhPGwWWvIAzpXYhpmV6pw/tCquZGvpjXK8I2t5R7xHjJZOkjYV2QV1xfV4JUKMgBipNkDG6SFbN6txrlrHBgmPF1i99BrA+f6RkWhzYjZu/JWFZ+IFAxn5bSxzYKIczdZpcnIx836ZXPlpPz6d/T8gbhrB2uUvEdNJppZSQDTibjy5EUrUlE81wgHgAawvHbuTnmqppBoig8Ia0w3h/AqHFk2v5Sd34AIEZmOCho9KBqRhDBjyuvrIsdUC5uT6zFvaF9B9/NWpYsCxIrPA0ezBp1Y9qJHBDklo3fiIQyt5eXcQnFapIFmCthzxHqDO3dGeSuCHMIIr1mnqck8tauJq6ZaZpkbK4+lYebLALbyNKzhrGhcgl6xL/V+FeKHQpSHw17qZEh4oEvtsOmUBsZSpT4qGbG2r3BMreJYBDjVBgPiULJnWdTQc6r5OyRmr1NidDBoTpuYvdMsMdOwJ3nyTVAZDM4HTd7qJsw6rfgT9Kly/VQK3UAGP+lZyBf+KTHJMWd7ZgxS5nmwOICR1XkJR2HWjRXTn8l9SzfQwR9fTXHDKHuRSOinxBTPwEXRfHTpJvtGnoqWo4hRksVTxIHdQarXHFQsFlRSI7yVgV8kOd3QsML+srnxWW17iB3uKTFyMTOFYUJask7aMKAvpoOFre2kwtICUwMMunAJxB6WhtfXhQy1WurK6ai97Skx2hiNxUDP8vUgWVzFSH5vAxumldIUvUt6lM9cufsBa3n21qfE5KtagcQb3P5wGgqcZtnGrk01Ywo6KnvKuteuRMZU7fc5JcZqUkZLERbD522qXTTLEn3G6RJwf5EI3UAmXENQ2EOdEkOFQ6KZbGbLZ2XYyUX6BdgaNpUZjQiJeJhTYhhyts2oLJs/RlkmPjKPt3cb2zc39elw286Uh4gHOCVmK1S91sikqa9Tcmj6NfXt3yBFH3m8RyAc4ikxe5m5Wqvr2u7v2YXwZ4h8nhLz2/w9pO3wK2HwJ1MG/xeW3mYxFCFChAgRIkSIECFChAgRIkSIECFChP0QfCov+NxggKfE/BKC/8pgkKfE+Bdi59kKfjoM+JQY34gr8YB3CoI+JcaOPXbKxc502WfvPR7wKTG2NkSY4Hrcr9Il6FNi+K73+XtIIqdo0NkoKm/Qp8TwgtDdfKH+xf/CkvAfjwr6lBhb18J/DymESpcQTonhOw/2LyztVekSzikxTBJx1cRYn45aXGSDNJxTYnhJxOpSRP2ZeI8hnRJjtROsChLhJNKjJNhjWKfEWE1xNdkb9BjaKTG29iJd7hPAisgc2ikxe/cYeIFJaKfEvH2PoZ0Ss2+PgS/QwjslJkKECBEiRIgQIUKECBEiRIgQIUKEN8bR3xZS4m8LKQbRSsznrVbsbwakWmIxk6T4Eus2f+fZDL7Xend5SMF+HVC11kJaxdbvpS9I/sRVDI0fUhP9aOHBbLX+uGytr1ox/JJeYo0OONrWh4l8LFQtMftwDelknUz8vFwsr1o3y9bH21jsbhVrXd9+vE28i63Ws9Wy9f7ybrlcJlrLZesydvu+tV7N5zfP6+d1uPpArG9uLm8+3fy5+PNuvYjB/27eXy9i63Xr2+Un/LgvF/D/y9jiMtFCz3+9ZqpJ35LXnzerq5vLn7M/rlr3Hxf3s+Xi6OG/7+4/zDbPicen2Oz5S+xoPttcHS2WG3nR2nydfZQfk3fJTfz7LBGyZq3Hh5dPf6yelld3/1g9PT29/zp/+PYYe/7r0/fn1cvzavXlefVj+bz8a/PlZfnw8uXHx/+0mGo3s3/Obu43N4m7x38dJe4Tqx8fPj++//f9fDPfXH/4vPmWuP+fp9jV9erj7fPyafly+TkZ+3x39C/lefPn7DIZumqr/zz+/LT68vLl5SXx9W7z1/fF8937d8/P84ePm4fN7err7Yerf2x+PKy+P2web78+rJ6ZavdHi6OX26f7Vmw+u79KHP1zPXtarZW7+5//XW+uH3/MYomr+03saPF4t7pdLmYf1qvvR8oivpktjxazuRz6bHsXm7cQw/2Ev89bP1tzrPD8J5pxc/wGvDSfo2vvIN3Nf+IGiCFvpKPlh/hHSJGt+eIy9q0VW98tLr9Bi1231vP1DWx4ia7H1vM5NPD19fz68u6m9e1u/mkxX8TuwtaMUgbW7h3Uk1EIuhCb2xvFLIpBql3On44eKOu3+Bu5X1oxOycxpjwsRe4F7LIh5/+u8v0CpLcWIDz8L+NOPm5FdD8wAAAAAElFTkSuQmCC"), //NetworkImage
                      radius: 60,
                    ), //CircleAvatar
                  ),
                  Text(
                      ' Alhamdulillah'
                  ),
                  Text(
                      ' Alhamdulillah is an Arabic phrase meaning "praise be to God",'
                  ),
                  Text(
                      ' Length=33'
                  ),//CircleAvatar
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 80,
                    child:  ElevatedButton(
                      child: const Text('count Tasbeeh'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const viewalltasbeeh()),
                        );
                      },
                    ), //RaisedButton
                  ), //SizedBox
                ],
              ), //Column
            ), //Padding
          ), //SizedBox
        ),
      ),
    ],
    ),

    ),


      Expanded(
        child: Card(
          elevation: 50,
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 200,
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.green[500],
                    radius: 68,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "data:image/png;base64,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"), //NetworkImage
                      radius: 60,
                    ), //CircleAvatar
                  ), //CircleAvatar
                  Text(
                      ' SUBHAMALLAH'
                  ),
                  Text(
                      ' (all) praise be to God'
                  ),
                  Text(
                      ' Length=33'
                  ),//CircleAvatar
                  SizedBox(
                    height: 10,
                  ), //SizedBox
                  SizedBox(
                    width: 80,
                    child:  ElevatedButton(
                      child: const Text('count Tasbeeh'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const subhanallah()),
                        );
                      },
                    ), //RaisedButton
                  ),
//SizedBox
                ]
              ), //Column
            ), //Padding
          ), //SizedBox
        ),
      ),
    ],
      ),
    );
  }
}
