#include "login.h"
#include  <QDebug>
Login::Login(QObject *parent)
    : QObject{parent},
    userName(""),
    password("")
{
    connect(this,&Login::clickLogin,this,&Login::clickedLogin);
}

void Login::setUserName(QString value)
{
    userName =  value;
    emit userNameChanged();
}

QString Login::getPassword()
{
    return password;
}

void Login::setPassword(QString value)
{
    password = value;
    emit passwordChanged();

}

void Login::clickedLogin()
{
    qDebug()<< userName << password;
}

QString Login::getUerName()
{
    return userName;
}
