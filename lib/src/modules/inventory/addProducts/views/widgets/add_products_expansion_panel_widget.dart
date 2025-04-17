import 'package:flutter/material.dart';

import 'add_products_item_widget.dart';

class AddProductExpansionPanelWidget extends StatefulWidget {
  const AddProductExpansionPanelWidget({super.key});

  @override
  State<AddProductExpansionPanelWidget> createState() =>
      _AddProductExpansionPanelWidget();
}

class _AddProductExpansionPanelWidget
    extends State<AddProductExpansionPanelWidget> {
  bool _isExpandedWidget = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Container(child: _buildSimplePanel()));
  }

  Widget _buildSimplePanel() {
    return ExpansionPanelList(
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _isExpandedWidget = isExpanded;
        });
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(title: Text("Nuevos productos 40"));
          },
          body: Container(
            constraints: BoxConstraints(
              maxHeight: (MediaQuery.of(context).size.height - 300 - 210) / 2,

              /// Line when two panels
              // maxHeight: MediaQuery.of(context).size.height,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AddProductsItemWidget(),
                  AddProductsItemWidget(),
                  AddProductsItemWidget(),
                ],
              ),
            ),
          ),
          isExpanded: _isExpandedWidget,
        ),
      ],
    );
  }
}
