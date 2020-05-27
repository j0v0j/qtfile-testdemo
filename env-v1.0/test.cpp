#include "test.h"
#include <QDebug>
test::test(QObject *parent) : QObject(parent)
{

}

void test::qmltest()
{
    qDebug()<<"c++ qmltest";
}
