#ifndef LOGIN_H
#define LOGIN_H

#include <QObject>

class Login : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ getUerName WRITE setUserName NOTIFY userNameChanged FINAL)
    Q_PROPERTY(QString password READ getPassword WRITE setPassword NOTIFY passwordChanged FINAL)




public:
    explicit Login(QObject *parent = nullptr);

signals:
    void userNameChanged();
    void passwordChanged();

    void clickLogin();

public slots:
    QString getUerName();
    void setUserName(QString value);

    QString getPassword();
    void setPassword(QString value);


    void clickedLogin();


private:
    QString userName;
    QString password;
};

#endif // LOGIN_H
