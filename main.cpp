#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QQmlContext>
#include <QDebug>

#include "serialinfo.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    //QGuiApplication rccar(argc, argv);

    // yasperzee testing this because qmlRegistertype does not work. . .
    QScopedPointer<SerialPortInfo> portInfo(new SerialPortInfo);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    // yasperzee testing this because qmlRegistertype does not work. . .
     engine.rootContext()->setContextProperty("portInfo", portInfo.data());

    return app.exec();
}

