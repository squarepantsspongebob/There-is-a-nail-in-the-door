#include <QDebug>
#include "dataobject.h"

DataObject::DataObject(QObject *parent)
    : QObject(parent)
{
}

DataObject::DataObject(const QString &name, const QString &color, const bool &show, const bool &opacity1, const bool &contour, QObject *parent)
    : QObject(parent), m_name(name), m_color(color), m_show(show), m_opacity1(opacity1), m_contour(contour)
{
}

QString DataObject::name() const
{
    return m_name;
}

void DataObject::setName(const QString &name)
{
    if (name != m_name) {
        m_name = name;
        emit nameChanged();
    }
}

QString DataObject::color() const
{
    return m_color;
}

void DataObject::setColor(const QString &color)
{
    if (color != m_color) {
        m_color = color;
        emit colorChanged();
    }
}

bool DataObject::show() const
{
    return m_show;
}

void DataObject::setShow(const bool &show)
{
    if (show != m_show) {
        m_show = show;
        emit showChanged();
    }
}

bool DataObject::opacity1() const
{
    return m_opacity1;
}

void DataObject::setOpacity1(const bool &opacity1)
{
    if (opacity1 != m_opacity1) {
        m_opacity1 = opacity1;
        emit opacity1Changed();
    }
}

bool DataObject::contour() const
{
    return m_contour;
}

void DataObject::setContour(const bool &contour)
{
    if (contour != m_contour) {
        m_contour = contour;
        emit contourChanged();
    }
}

