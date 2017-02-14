#ifndef DATAOBJECT_H
#define DATAOBJECT_H

#include <QObject>
//![0]
class DataObject : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(QString color READ color WRITE setColor NOTIFY colorChanged)
    Q_PROPERTY(bool show READ show WRITE setShow NOTIFY showChanged)
    Q_PROPERTY(bool opacity1 READ opacity1 WRITE setOpacity1 NOTIFY opacity1Changed)
    Q_PROPERTY(bool contour READ contour WRITE setContour NOTIFY contourChanged)
//![0]

public:
    DataObject(QObject *parent=0);
    DataObject(const QString &name, const QString &color, const bool &show, const bool &opacity1, const bool &contour, QObject *parent=0);

    QString name() const;
    void setName(const QString &name);

    QString color() const;
    void setColor(const QString &color);

    bool show()const;
    void setShow(const bool &show);

    bool opacity1()const;
    void setOpacity1(const bool &opacity1);

    bool contour()const;
    void setContour(const bool &contour);

signals:
    void nameChanged();
    void colorChanged();
    void showChanged();
    void opacity1Changed();
    void contourChanged();

private:
    QString m_name;
    QString m_color;
    bool m_opacity1;
    bool m_show;
    bool m_contour;
//![1]
};
//![1]

#endif // DATAOBJECT_H
