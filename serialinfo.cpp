/*-------------------------------------------------
#
#   Yasperzee 2'19 Integrate with QML
#   v0.1    integrate with QML
#
#   Yasperzee 2'19 baseline for RC-car-control
#   v0.0    read serialport info
#
-------------------------------------------------*/

#include "serialinfo.h"

SerialPortInfo::SerialPortInfo(QObject *parent) : QObject(parent)
{

}

sInfo SerialPortInfo::GetSerialInfo()
{
    sInfo data;
    const auto infos = QSerialPortInfo::availablePorts();
    for (const QSerialPortInfo &info : infos)
        {
        data.description = info.description();
        data.manufacturer = info.manufacturer();
        data.serialNumber = info.serialNumber();
        data.location = info.systemLocation();
        if(info.hasVendorIdentifier())
            {
            data.vendor = QString::number(info.vendorIdentifier());
            }
        if(info.hasProductIdentifier())
            {
            data.product = QString::number(info.productIdentifier());
            }
        if(info.isBusy())
            {
            data.busy = QObject::tr("Yes");
            }
        else{
            data.busy = QObject::tr("No");
            }
        }
    return(data);
  };

void SerialPortInfo::SetSerialInfo()
{
    //QString s;
    sInfo data;
    const auto infos = QSerialPortInfo::availablePorts();
    for (const QSerialPortInfo &info : infos)
        {
        data.description = info.description();
        data.manufacturer = info.manufacturer();
        data.serialNumber = info.serialNumber();
        data.location = info.systemLocation();
        if(info.hasVendorIdentifier())
            {
            data.vendor = QString::number(info.vendorIdentifier());
            }
        if(info.hasProductIdentifier())
            {
            data.product = QString::number(info.productIdentifier());
            }
        if(info.isBusy())
            {
            data.busy = QObject::tr("Yes");
            }
        else{
            data.busy = QObject::tr("No");
            }
        }
  };

QString SerialPortInfo::showSerialInfo()
{
    QString s;
    const auto infos = QSerialPortInfo::availablePorts();
    for (const QSerialPortInfo &info : infos)
        {
        s = QObject::tr("Port: ") + info.portName() + "\n"
        + QObject::tr("Location: ") + info.systemLocation() + "\n"
        + QObject::tr("Description: ") + info.description() + "\n"
        + QObject::tr("Manufacturer: ") + info.manufacturer() + "\n"
        + QObject::tr("Serial number: ") + info.serialNumber() + "\n"
        + QObject::tr("Vendor Identifier: ") + (info.hasVendorIdentifier() ? QString::number(info.vendorIdentifier(), 16) : QString()) + "\n"
        + QObject::tr("Product Identifier: ") + (info.hasProductIdentifier() ? QString::number(info.productIdentifier(), 16) : QString()) + "\n"
        + QObject::tr("Busy: ") + (info.isBusy() ? QObject::tr("Yes") : QObject::tr("No")) + "\n";
        }
    return(s);
};
