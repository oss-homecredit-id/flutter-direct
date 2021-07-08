part of flutter_direct;

enum ListViewType { ListView, ListViewBuilder }

class MoleculeListView extends StatelessWidget {
  final Widget? widget;
  final int? length;
  final String? keyValue;
  final bool? shrinkWrap;

  MoleculeListView({this.widget, this.length, this.keyValue, this.shrinkWrap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: MediaQuery.of(context).size.height * 10,
      padding: EdgeInsets.only(bottom: 20),
      child: ListView.builder(
          key: Key(keyValue!),
          shrinkWrap: shrinkWrap!,
          itemCount: length,
          itemBuilder: (context, index) {
            return widget!;
          }),
    );
  }
}
