import 'package:mobx/mobx.dart';
import 'package:target/model/info.dart';
import 'package:target/services/local_save.dart';

part 'info_page_mobx.g.dart';

class InfoPageMobx = InfoPageMobxBase with _$InfoPageMobx;

abstract class InfoPageMobxBase with Store {
  int idGen = 0;

  @observable
  ObservableList<Info> infos = ObservableList.of([]);

  @observable
  Info? selectedInfo;

  @action
  void addInfo(String text) {
    idGen++;
    infos.add(Info(id: idGen, text: text));
    LocalSave().saveInfos(infos);
    loadSavedInfo();
  }

  @action
  void editInfo(Info info) {
    int cont = 0;
    for (var element in infos) {
      if (element.id == info.id) {
        infos[cont] = info;
        break;
      }
      cont++;
    }
    LocalSave().saveInfos(infos);
    selectedInfo = null;
    loadSavedInfo();
  }

  @action
  void removeInfo(Info info) {
    infos.removeWhere((element) => element.id == info.id);
    LocalSave().saveInfos(infos);
    loadSavedInfo();
  }

  @action
  Future<void> loadSavedInfo() async {
    var loadedInfo = await LocalSave().loadInfos();
    if (loadedInfo != null) {
      infos.clear();
      for (var info in loadedInfo) {
        infos.add(info);
      }
      idGen = infos[infos.length - 1].id! + 1;
    }
  }
}
