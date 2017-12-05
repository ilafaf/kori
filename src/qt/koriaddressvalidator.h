// Copyright (c) 2011-2014 The Kori Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef KORI_QT_KORIADDRESSVALIDATOR_H
#define KORI_QT_KORIADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class KoriAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit KoriAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Kori address widget validator, checks for a valid kori address.
 */
class KoriAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit KoriAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // KORI_QT_KORIADDRESSVALIDATOR_H
