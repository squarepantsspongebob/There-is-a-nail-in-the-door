#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QFont>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    //Set the global Font
    QFont font;
    font.setPointSize(16);
    font.setFamily("微软雅黑");
    app.setFont(font);

//    //Initialize 3D Model
//    QList<QObject*> dataList;
//    dataList.append(new DataObject("模型1", "#9C815F", true, true, false));
//    dataList.append(new DataObject("模型2", "#E0E000", true, true, false));
//    dataList.append(new DataObject("模型3", "#E90000", false, true, false));
//    dataList.append(new DataObject("模型4", "#1669B9", true, false, false));
//    QList<QObject*> group1;
//    group1.append(new DataObject("模型1", "#9C815F", false, true, false));
//    group1.append(new DataObject("模型2", "#E0E000", false, true, false));
//    group1.append(new DataObject("模型3", "#E90000", false, true, false));
//    group1.append(new DataObject("模型4", "#1669B9", false, true, false));
//    QList<QObject*> group2;
//    group2.append(new DataObject("模型1", "#9C815F", false, true, false));
//    group2.append(new DataObject("模型2", "#E0E000", false, true, false));
//    group2.append(new DataObject("模型3", "#E90000", false, true, false));
//    group2.append(new DataObject("模型4", "#1669B9", false, true, false));
//    QList<QObject*> group3;
//    group3.append(new DataObject("模型1", "#9C815F", false, true, false));
//    group3.append(new DataObject("模型2", "#E0E000", false, true, false));
//    group3.append(new DataObject("模型3", "#E90000", false, true, false));
//    group3.append(new DataObject("模型4", "#1669B9", false, true, false));
//    QList<QObject*> group4;
//    group4.append(new DataObject("模型1", "#9C815F", false, true, false));
//    group4.append(new DataObject("模型2", "#E0E000", false, true, false));
//    group4.append(new DataObject("模型3", "#E90000", false, true, false));
//    group4.append(new DataObject("模型4", "#1669B9", false, true, false));


    QQmlApplicationEngine engine;

//    QQmlContext *ctxt = engine.rootContext();
//    ctxt->setContextProperty("myModel", QVariant::fromValue(dataList));
////![0]
////!
//    ctxt->setContextProperty("myGroup1", QVariant::fromValue(group1));
//    ctxt->setContextProperty("myGroup2", QVariant::fromValue(group2));
//    ctxt->setContextProperty("myGroup3", QVariant::fromValue(group3));
//    ctxt->setContextProperty("myGroup4", QVariant::fromValue(group4));

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
