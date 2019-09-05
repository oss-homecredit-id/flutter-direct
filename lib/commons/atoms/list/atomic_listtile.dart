part of flutter_direct;

enum ListTileType { Inbox, NotInbox }

class AtomicListtile extends StatelessWidget {
  final String subTitle;
  final String leading;
  final String titleInbox;
  final String titleInboxDate;
  final ListTileType listTileType;

  AtomicListtile(
      {this.subTitle,
      this.leading,
      this.titleInbox,
      this.titleInboxDate,
      this.listTileType});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F4F4),
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
          child: Center(
            child: Text(leading, style: TextStyle(fontFamily: 'PtSans')),
          ),
        ),
        title: listTileType == ListTileType.Inbox
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(titleInbox,
                      style: TextStyle(
                          fontFamily: 'PtSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 13)),
                  Text(titleInboxDate,
                      style: TextStyle(
                          fontFamily: 'PtSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ],
              )
            : Text(titleInbox,
                style: TextStyle(
                    fontFamily: 'PtSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Text(subTitle,
                style: TextStyle(
                    fontFamily: 'PtSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 13)),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

getInputType(ListTileType listTileType) {
  switch (listTileType) {
    case ListTileType.Inbox:
      return true;
      break;
    case ListTileType.NotInbox:
      return true;
      break;
  }
}
