#ifndef SERIALINFO_H
#define SERIALINFO_H

#include <QObject>
#include <QSerialPortInfo>
#include <QMessageBox>

struct sInfo
    {
    QString description;
    QString manufacturer;
    QString serialNumber;
    QString location;
    QString vendor;
    QString product;
    QString busy;
    };

class SerialPortInfo : public QObject
{

Q_OBJECT

public:
    explicit SerialPortInfo(QObject *parent = nullptr);
    Q_INVOKABLE QString showSerialInfo();
    Q_INVOKABLE void SetSerialInfo();
    Q_INVOKABLE sInfo GetSerialInfo();
};

#endif // SERIALINFO_H
