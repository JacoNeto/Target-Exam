import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gap/gap.dart';
import 'package:target/model/info.dart';
import 'package:target/utils/shared_widgets/dialogs/confirmation_dialog.dart';
import 'package:target/view/info/components/card_child.dart';
import 'package:target/view_model/info_page_mobx.dart';

import '../../utils/shared_widgets/default_text_field.dart';
import '../../utils/style/background.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  final _infoPageMobX = InfoPageMobx();

  final _formKey = GlobalKey<FormState>();
  final _textEditingController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: backgroundDecoration,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Observer(
                      builder: (_) => SizedBox(
                          height: 400,
                          width: double.infinity,
                          child: Card(
                            child: ListView.builder(
                                itemCount: _infoPageMobX.infos.length,
                                itemBuilder: (_, index) {
                                  var info = _infoPageMobX.infos[index];
                                  return CardChild(
                                    label: info.text,
                                    onEditPressed: () {
                                      _infoPageMobX.selectedInfo = info;
                                      _textEditingController.text = info.text;
                                    },
                                    onDeletePressed: () => DialogHandler
                                        .showDeleteConfirmationDialog(context,
                                            onPressed: () {
                                      _infoPageMobX.removeInfo(info);
                                      Navigator.of(context).pop();
                                    }),
                                  );
                                }),
                          )),
                    ),
                    const Gap(32),
                    Observer(
                      builder: (_) => DefaultTextFormField(
                        label: "Digite seu texto",
                        controller: _textEditingController,
                        textInputAction: TextInputAction.done,
                        focusNode: _focusNode,
                        onFieldSubmitted: (text) {
                          _formKey.currentState!.save();
                          if (_formKey.currentState!.validate()) {
                            // editar
                            if (_infoPageMobX.selectedInfo != null) {
                              _infoPageMobX.editInfo(Info(
                                id: _infoPageMobX.selectedInfo!.id,
                                text: text,
                              ));
                              _formKey.currentState!.reset();
                            }
                            // adicionar
                            else {
                              _infoPageMobX.addInfo(text);
                              _formKey.currentState!.reset();
                            }
                          }
                          _focusNode.requestFocus();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
