#ifndef TEST_H
#define TEST_H

#include <QObject>

class test : public QObject
{
    Q_OBJECT
public:
    explicit test(QObject *parent = nullptr);

signals:

public slots:
    void qmltest();
};

#endif // TEST_H
