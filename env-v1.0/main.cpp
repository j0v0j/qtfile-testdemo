#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "test.h"
#include <QQmlComponent>
int main(int argc, char *argv[])
{
    qputenv("QT_IM_MODULE", QByteArray("qtvirtualkeyboard"));

    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQmlEngine eng;
    QQmlComponent component(&eng,QUrl(QStringLiteral("qrc:/main.qml")));
    QObject *obj=component.create();
    test t;
    QObject::connect(obj,SIGNAL(slidervalue()),&t,SLOT(qmltest()));
//    QQmlApplicationEngine engine;
//    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
//    if (engine.rootObjects().isEmpty())
//        return -1;

    return app.exec();
}
