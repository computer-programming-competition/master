#ifndef USER_H
#define USER_H
#include<QString>
#include<iostream>
#include<vector>
#include <QList>
class NewUser;
class user
{
public:
    user();
    QString name() const;
    void setName(const QString &n);
    void setCommunity(const QString &c);
    QString community() const;
    void setNewUser(QString n,QString c);
    std::vector<NewUser*> newUser();
    QList<QString> getAccountList();
    std::vector<NewUser*> _newUser;
private:
    QString _name;
    QString _community;
};

#endif // USER_H
